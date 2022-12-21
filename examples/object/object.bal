import ballerina/io;

class Engineer {
    string name;

    function init(string name) {
        self.name = name;
    }

    function getName() returns string {
        return self.name;
    }
}

public function main() {
    // Apply the `new` operator with a `class` to get an `object` value.
    Engineer engineer = new Engineer("Walter White");

    // Call the `getName` method using `obj.method(args)` syntax.
    string engineerName = engineer.getName();
    io:println(engineerName);

    // Accessing the field `name` using `obj.field` syntax.
    engineerName = engineer.name;
    io:println(engineerName);
}
