import Vapor

var env = try Environment.detect()

try LoggingSystem.bootstrap(from: &env)

let app = Application(env)
defer { app.shutdown() }

app.get { _ in
    "Hello, world!"
}

try app.run()
