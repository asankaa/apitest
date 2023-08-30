import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "BalanceInq",
	id: "BalanceInq-2d206866-6e0d-4ef0-a588-7897c04326ee"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
