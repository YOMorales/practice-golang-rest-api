// 'entry-point' file that will initiialize everything

package main

func main() {
	// creates new RestApi 'object' (see rest_api.go)
	rest := RestApi{}

	// TODO: move these things to a config file (search best practices for Golang)
	// initilizes the RestApi app, along with database connections and more
	rest.Initialize("yamir", "", "practice-golang-rest-api")

	// listens localhost and port 7070, sending requests to the router
	rest.Run("localhost", "7070")
}

