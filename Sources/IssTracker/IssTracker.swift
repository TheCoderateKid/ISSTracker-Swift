public struct IssTracker {

    static func getISS(completion: @escaping (Result<ISS, Error>) -> ()) {
        let http = HttpService()
        http.findISS(completion: completion)
    }
}
