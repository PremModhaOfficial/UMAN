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

