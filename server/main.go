package main

import (
	"database/sql"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

type User struct {
	ID       int    `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
}

func login(c echo.Context) error {
	username := c.FormValue("username")
	password := c.FormValue("password")

	db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/cai")
	if err != nil {
		return err
	}
	defer db.Close()

	var user User
	err = db.QueryRow("SELECT id, username, password FROM users WHERE username=? AND password=?", username, password).Scan(&user.ID, &user.Username, &user.Password)
	if err != nil {
		return c.JSON(http.StatusUnauthorized, map[string]string{"message": "Invalid username or password"})
	}

	return c.JSON(http.StatusOK, map[string]string{"message": "Login successful"})
}

func main() {
	e := echo.New()

	// Add CORS middleware
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"http://localhost:30927"}, // Replace with your Flutter frontend URL
		AllowHeaders: []string{echo.HeaderOrigin, echo.HeaderContentType, echo.HeaderAccept},
	}))

	e.POST("/login", login)

	e.Logger.Fatal(e.Start(":8080"))
}
