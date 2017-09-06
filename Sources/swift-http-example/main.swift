import HTTP
import Foundation

let app: HTTPRequestHandler = { (request, responseWriter) in
    print("[Requested]", request.method, request.target, request.httpVersion)
    var headers = HTTPHeaders()
    headers[.contentType] = "text/html"
    responseWriter.writeHeader(status: .ok, headers: headers)
    responseWriter.writeBody("<p>Hello, world!</p>")
    return .discardBody
}

do {
    let server = HTTPServer()
    try server.start(handler: app)
    print("try `curl -v 'http://localhost:\(server.port)'`")
} catch (let e) {
    print(e)
}

while true {
    sleep(1)
}
