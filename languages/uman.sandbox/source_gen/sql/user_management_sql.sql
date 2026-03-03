-- ============================================================
-- PremNCo Schema
-- ============================================================

CREATE TABLE IF NOT EXISTS users (
    id            BIGSERIAL       PRIMARY KEY,
    name    TEXT  NOT NULL,
    department    TEXT  NOT NULL,
    email    TEXT  NOT NULL,
    password    TEXT  NOT NULL,
    firstName    TEXT  NOT NULL,
    lastName    TEXT  NOT NULL,
    IsActive    BOOLEAN  NOT NULL,
    createdAt    TIMESTAMPTZ  NOT NULL,
    updatedAt    TIMESTAMPTZ  NOT NULL,
    p   BIGINT NOT NULL REFERENCES Roles(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Roles (
    id            BIGSERIAL       PRIMARY KEY,
    name    TEXT  NOT NULL,
    Description    TEXT  NOT NULL,
    created_at    TEXT  NOT NULL
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_users_name ON users(name);
CREATE INDEX IF NOT EXISTS idx_users_lastName ON users(lastName);
CREATE INDEX IF NOT EXISTS idx_Roles_created_at ON Roles(created_at);
