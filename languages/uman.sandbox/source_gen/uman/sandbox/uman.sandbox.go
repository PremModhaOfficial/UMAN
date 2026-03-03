package main

import (
	"database/sql"
	_ "embed"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"
	"time"

	_ "github.com/lib/pq"
	httpSwagger "github.com/swaggo/http-swagger"
	_ "mod/path/docs"
)

//go:embed user_management_init.sql
var migrationSQL string

// @title         PremNCo API
// @version       1.0
// @description   CRUD service for PremNCo
// @host          localhost:8899
// @BasePath      /
// @schemes       http
// @produce       json
// @consumes      json

// ============================================================
// Models
// ============================================================

type Role struct 
	ID int64 `json:"id" db:"id" example:"1"`
	Name string `json:"name" db:"name"`
	Description string `json:"Description" db:"Description"`
	CreatedAt string `json:"created_at" db:"created_at"`
}

type RoleCreate struct {
}

type User struct {
	Name string `json:"name" db:"name"`
	Department string `json:"department" db:"department"`
	Email string `json:"email" db:"email"`
	Password string `json:"password" db:"password"`
	FirstName string `json:"firstName" db:"firstName"`
	LastName string `json:"lastName" db:"lastName"`
	IsActive bool `json:"IsActive" db:"IsActive"`
	CreatedAt timestamp `json:"createdAt" db:"createdAt"`
	UpdatedAt timestamp `json:"updatedAt" db:"updatedAt"`
	P int64 `json:"p" db:"p"`
}

// ============================================================
// Repositories
// ============================================================

type RoleRepo struct{ db *sql.DB }

func (r *RoleRepo) Create(u *Role) error {
	return r.db.QueryRow(
		`INSERT INTO Roles (name, Description, created_at)
		 VALUES ($i, $i, $i)
		 RETURNING id`,
		u.Name,
		u.Description,
		u.CreatedAt,
	).Scan(&u.ID)
}

func (r *RoleRepo) GetByID(id int64) (*Role, error) {
	u := &Role{}
	err := r.db.QueryRow(
		`SELECT id, name, Description, created_at
		 FROM Roles WHERE id = $1`, id,
	).Scan(&u.ID, &u.Name, &u.Description, &u.CreatedAt)
	return u, err
}

func (r *RoleRepo) List() ([]Role, error) {
	rows, err := r.db.Query(
		`SELECT id, Name, Description, CreatedAt
		 FROM Roles ORDER BY id`)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var items []Role
	for rows.Next() {
		var u Role
		if err := rows.Scan(&u.ID, &u.Name, &u.Description, &u.CreatedAt); err != nil {
			return nil, err
		}
		items = append(items, u)
	}
	return items, rows.Err()
}

func (r *RoleRepo) Update(u *Role) error {
	return r.db.QueryRow(
		`UPDATE Roles SET name = $1, Description = $2, created_at = $3		u.ID,
	).Scan(&u.UpdatedAt)
}

func (r *RoleRepo) Delete(id int64) error {
	_, err := r.db.Exec(`DELETE FROM } ${tn} { WHERE id = $1`, id)
	return err
}

type UserRepo struct{ db *sql.DB }

func (r *UserRepo) Assign(p int64) (*User, error) {
	ur := &User{}
	err := r.db.QueryRow(
		`INSERT INTO users (p) VALUES ($1)
		 ON CONFLICT (p) DO NOTHING
		 RETURNING name, department, email, password, firstName, lastName, IsActive, createdAt, updatedAt, p`,
		p,
	).Scan()
	return ur, err
}

func (r *UserRepo) Remove(p int64) error {
	_, err := r.db.Exec(`DELETE FROM users WHERE p int64p = $1`, p)
	return err
}

func (r *UserRepo) GetRolesByRole(p int64) ([]Role, error) {
	rows, err := r.db.Query(
		`SELECT t.id, t.name, t.Description, t.created_at
		 FROM Roles t
		 INNER JOIN users j ON j.p = t.id
		 WHERE j.p = $1
		 ORDER BY t.id`, p,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var items []Role
	for rows.Next() {
		var item Role
		if err := rows.Scan(&item.ID, &item.Name, &item.Description, &item.CreatedAt); err != nil {
			return nil, err
		}
		items = append(items, item)
	}
	return items, rows.Err()
}

// ============================================================
// HTTP Handlers — Role
// ============================================================

func handleCreateRole(repo *RoleRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var u Role
		if err := json.NewDecoder(r.Body).Decode(&u); err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		if err := repo.Create(&u); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusCreated)
		json.NewEncoder(w).Encode(u)
	}
}

func handleGetRole(repo *RoleRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		idStr := r.PathValue("id")
		id, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		u, err := repo.GetByID(id)
		if err != nil {
			http.Error(w, err.Error(), http.StatusNotFound)
			return
		}
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(u)
	}
}

func handleUpdateRole(repo *RoleRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		idStr := r.PathValue("id")
		id, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		var u Role
		if err := json.NewDecoder(r.Body).Decode(&u); err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		u.ID = id
		if err := repo.Update(&u); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(u)
	}
}

func handleDeleteRole(repo *RoleRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		idStr := r.PathValue("id")
		id, err := strconv.ParseInt(idStr, 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		if err := repo.Delete(id); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.WriteHeader(http.StatusNoContent)
	}
}

// ============================================================
// HTTP Handlers — User (assignments)
// ============================================================

func handleAssignRole(urRepo *UserRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		} ${firstRef.name} {, err := strconv.ParseInt(r.PathValue("id"), 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		var body Assign} ${secondRef.target_schema.structName()} {Body
		if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
			http.Error(w, err.Error(), http.StatusBadRequest)
			return
		}
		ur, err := urRepo.Assign(} ${firstRef.name} {, body.} ${secondRef.pascalName()} {)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusCreated)
		json.NewEncoder(w).Encode(ur)
	}
}

func handleRemoveRole(urRepo *UserRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		} ${firstRef.name} {, err := strconv.ParseInt(r.PathValue("id"), 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		} ${secondRef.name} {, err := strconv.ParseInt(r.PathValue("} ${secondRef.name} {"), 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		if err := urRepo.Remove(} ${firstRef.name} {, } ${secondRef.name} {); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.WriteHeader(http.StatusNoContent)
	}
}

func handleGetRoleRoles(urRepo *UserRepo) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		id, err := strconv.ParseInt(r.PathValue("id"), 10, 64)
		if err != nil {
			http.Error(w, "invalid id", http.StatusBadRequest)
			return
		}
		items, err := urRepo.Get} ${frB.target_schema.structName()} {sBy} ${frA.target_schema.structName()} {(id)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(items)
	}
}

// ============================================================
// Main
// ============================================================

func main() {
	dbURL := os.Getenv("DATABASE_URL")
	if dbURL == "" {
		dbURL = "postgres://} ${infra.dbUser} {:} ${infra.dbPass} {@localhost:5432/} ${infra.dbName} {?sslmode=disable"
	}

	db, err := sql.Open("postgres", dbURL)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	for i := 0; i < 5; i++ {
		if err = db.Ping(); err == nil {
			break
		}
		log.Printf("DB not ready, retrying... (%d/5)", i+1)
		time.Sleep(2 * time.Second)
	}
	if err != nil {
		log.Fatal("DB connection failed:", err)
	}

	if _, err := db.Exec(migrationSQL); err != nil {
		log.Fatal(err)
	}
	log.Println("Migration complete")

	RoleRepo := &RoleRepo{db: db}
	userRepo := &UserRepo{db: db}

	mux := http.NewServeMux()

	// Swagger UI
	mux.HandleFunc("GET /swagger/*", httpSwagger.WrapHandler)

	// Roles
	mux.HandleFunc("POST /Roles", handleCreateRole))
	mux.HandleFunc("GET /Roles", handleListRoles(RoleRepo))
	mux.HandleFunc("GET /Roles/{id}", handleGetRole(RoleRepo))
	mux.HandleFunc("PUT /Roles/{id}", handleUpdateRole(RoleRepo))
	mux.HandleFunc("DELETE /Roles/{id}", handleDeleteRole(Role(RoleRepo))

	// User assignments
	mux.HandleFunc("POST /Roles/{id}/Roles", handleAssignRole(userRepo))
	mux.HandleFunc("DELETE //{id}/Roles/{p}", handleRemoveRole(userRepo))
	mux.HandleFunc("GET //{id}/Roles", handleGetRoles(userRepo))
	mux.HandleFunc("GET /Roles/{id}/", handleGetRoles(userRepo))

	fmt.Println("Serving on :8899")
	fmt.Println("Swagger UI: http://localhost:8899/swagger/index.html")
	log.Fatal(http.ListenAndServe(":8899", mux))
}
