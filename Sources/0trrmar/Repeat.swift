import ArgumentParser

@main
struct Repeat: ParsableCommand {
    @Argument(help: "The phrase to repeat.")
    var phrase: String

    @Option(help: "The number of times to repeat 'phrase'.")
    var count: Int?

    mutating func run() throws {
        repeatElement(phrase, count: count ?? .max).forEach {
            print($0)
        }
    }
}