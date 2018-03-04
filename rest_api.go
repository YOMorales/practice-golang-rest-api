// Dependencies that need to be installed:
// go get github.com/gorilla/mux
// go get github.com/go-sql-driver/mysql

package main

import (
	// standard library's generic interface around SQL (or SQL-like) databases
	"database/sql"
	"log"
	"net/http"
	// 'router' third-party package
	"github.com/gorilla/mux"
	// underscore imports a package solely for its side-effects (initialization); in this case, registers mysql
	// as a database driver, without importing any other functions from such package
	_ "github.com/go-sql-driver/mysql"
)

// creates a named 'RestApi' struct for holding certain 'objects'
type RestApi struct {
	router *mux.Router // holds the router
	db *sql.DB // holds the database driver
}

// binds an 'Initialize' method to the RestApi struct; the method will setup the database and other things
func (rest *RestApi) Initialize(user string, password string, dbname string) {
}

func (rest *RestApi) SetRoutes() {
}

// 'Run' method will execute the REST API application
func (rest *RestApi) Run(host string, port string) {
    log.Fatal(http.ListenAndServe(host + ":" + port, rest.router))
}

