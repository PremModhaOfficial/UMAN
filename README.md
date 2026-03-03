# UMAN — User Management DSL

A JetBrains MPS language that generates a production-ready Go REST API from a simple schema definition. Define your models once, get SQL migrations + full CRUD API + Swagger docs out of the box.

## Mindset

**The problem:** Every time you spin up a new microservice with user/role management, you write the same boilerplate — structs, repos, handlers, SQL, routes. It's 700+ lines of Go that follows the exact same pattern every time.

**The solution:** Describe *what* your data looks like, not *how* to wire it. UMAN takes a declarative schema (tables, fields, relations) and generates all the plumbing. You focus on the domain; the DSL handles the repetition.

**Design philosophy:**
- One schema definition → multiple outputs (SQL + Go)
- Convention over configuration — sensible defaults (BIGSERIAL PKs, timestamps, NOT NULL)
- Sensitive field awareness — auto-redacts in JSON responses
- Join tables are first-class — define two `relation` fields and get Assign/Remove/cross-query handlers for free

## Language Concepts

### `Models`
Top-level container. Holds a collection of `ModelSchema` nodes. Named after your domain (e.g. `UserManagement`).

### `ModelSchema`
A single database table / Go struct. Name it plural (e.g. `users`, `roles`) — the generator singularizes + PascalCases automatically (`users` → `User` struct, `UserRepo`, `UserCreate`).

**Children:** `Field` or `FieldRefrence` (relation)

### `Field` (alias: `field`)
A column in the table / field in the struct.

| Property | Type | Purpose |
|---|---|---|
| `name` | string | Column name. Use snake_case (e.g. `first_name`) |
| `dataType` | DataType enum | Maps to SQL + Go types |
| `Index` | boolean | Generate `CREATE INDEX` for this column |
| `Sensitive` | boolean | Auto-redact in JSON (e.g. `password` → `[REDACTED]`) |
| `CanBeNull` | boolean | If false → `NOT NULL` in SQL |

**DataType mapping:**

| DataType | SQL | Go |
|---|---|---|
| `int64` | `BIGINT` | `int64` |
| `string` | `TEXT` | `string` |
| `float` | `FLOAT` | `float64` |
| `boolean` | `BOOLEAN` | `bool` |
| `timestamp` | `TIMESTAMPTZ` | `time.Time` |

### `FieldRefrence` (alias: `relation`)
A foreign key relationship to another schema.

| Property | Type | Purpose |
|---|---|---|
| `name` | string | FK column name (e.g. `user_id`) |
| `name_of_relation` | string | Descriptive label |
| `type_of_relation` | string | Relation type (future: enum) |
| `target_schema` | ref → ModelSchema | Which table this FK points to |

**Join table pattern:** A schema with 2+ `relation` fields and no regular fields (except timestamps) is treated as a many-to-many join table. The generator produces `Assign`, `Remove`, and cross-query methods automatically.

### `Infra` (alias: `infra`)
Infrastructure configuration for code generation.

| Property | Type | Example |
|---|---|---|
| `modulePath` | string | `github.com/you/project` |
| `port` | string | `8080` |
| `dbUser` | string | `postgres` |
| `dbPass` | string | `password` |
| `dbName` | string | `mydb` |

### `Code` (alias: `code`)
The generation entry point. References a `Models` node and an `Infra` node. TextGen is attached to this concept.

| Reference | Target | Purpose |
|---|---|---|
| `model` | Models | Which schemas to generate |
| `infra` | Infra | DB/server config values |

### `SQL`
Generates the `_init.sql` migration file. References a `Models` node via `targetScemaFilde`.

## Behavior Methods

These are defined on the concepts and used by TextGen to transform names:

| Concept | Method | Example |
|---|---|---|
| `ModelSchema` | `pascalCase(input)` | `"first_name"` → `"FirstName"` |
| `ModelSchema` | `singularName()` | `"users"` → `"user"` |
| `ModelSchema` | `structName()` | `"users"` → `"User"` |
| `ModelSchema` | `repoName()` | `"users"` → `"UserRepo"` |
| `ModelSchema` | `createStructName()` | `"users"` → `"UserCreate"` |
| `ModelSchema` | `hasReferences()` | `true` if any child is `FieldRefrence` |
| `Field` | `pascalName()` | `"first_name"` → `"FirstName"` |
| `Field` | `goType()` | `DataType.string` → `"string"` |
| `FieldRefrence` | `pascalName()` | `"user_id"` → `"UserId"` |

## What Gets Generated

### From `SQL` TextGen → `user_management_init.sql`
- `CREATE TABLE` for each schema
- `BIGSERIAL PRIMARY KEY` auto-added as `id`
- Column types mapped from DataType enum
- `NOT NULL` based on `CanBeNull`
- Foreign keys with `ON DELETE CASCADE` for relations
- Composite primary key for join tables
- `CREATE INDEX` for fields with `Index = true`

### From `Code` TextGen → `<ModelName>.go`
- Package + imports (including swagger)
- Go structs with JSON/DB tags for each schema
- `MarshalJSON` override for schemas with `Sensitive` fields
- `*Create` request structs (excludes timestamp fields)
- Join structs + `Assign*Body` for many-to-many
- Repository layer: `Create`, `GetByID`, `List`, `Update`, `Delete`
- Join repos: `Assign`, `Remove`, cross-queries (`GetRolesByUser`, etc.)
- HTTP handlers for all CRUD + join operations
- `main()` with DB connection, migration, routing, Swagger UI

## Project Structure

```
UMAN/
├── languages/
│   └── uman/
│       └── models/
│           ├── uman.structure.mps    # Concept definitions
│           ├── uman.editor.mps       # Editor UI
│           ├── uman.textGen.mps      # Code generation
│           ├── uman.behavior.mps     # Name transform methods
│           └── uman.constraints.mps  # Scope rules
└── languages/
    └── uman.sandbox/
        └── models/
            └── uman.sandbox.mps      # Test instances
```

## Quick Start

1. Open in JetBrains MPS
2. In the sandbox, create a `Models` node with your schemas
3. Add `Field` and `relation` children to each schema
4. Create an `Infra` node with your config
5. Create a `Code` node referencing both
6. Rebuild language → Right-click → Preview Generated Text

## Naming Conventions

- **Schema names:** plural snake_case (`users`, `roles`, `user_roles`)
- **Field names:** snake_case (`first_name`, `is_active`)
- **Generated Go:** auto-PascalCased (`FirstName`, `IsActive`)
- **Generated SQL:** keeps original snake_case
- **Repo/Handler names:** derived from singular PascalCase (`User` → `UserRepo`, `handleCreateUser`)
