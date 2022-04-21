import UIKit

protocol Encoder {
    func encode<T>(_ value: T) throws -> Data where T: Encodable
}

extension JSONEncoder: Encoder {
    
}

extension PropertyListEncoder: Encoder { }

//Constructor Injection
/*
class Post: Encodable {
    var title: String
    var content: String
    
    private var encoder: Encoder
    
    private enum CodingKeys: String, CodingKey {
        case title
        case content
    }
    
    init(title: String, content: String, encoder: Encoder) {
        self.title = title
        self.content = content
        self.encoder = encoder
    }
    
    func encoded() throws -> Data {
        return try self.encoder.encode(self)
    }
}

let post = Post(title: "Hello!", content: "Constructor DI", encoder: JSONEncoder())

if let data = try? post.encoded(),
   let encoded = String(data: data, encoding: .utf8) {
    print(encoded)
}
*/

//Property Injection
/*
class Post: Encodable {
    var title: String
    var content: String
    
    var encoder: Encoder?
    
    private enum CodingKeys: String, CodingKey {
        case title
        case content
    }
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
    func encoded() throws -> Data {
        guard let encoder = encoder else {
            fatalError("Encoder is only supported with valid encoder object.")
        }
        return try encoder.encode(self)
    }
}

let post = Post(title: "Hello DI!", content: "PROPERTY INJECTION")
post.encoder = JSONEncoder()

if let data = try? post.encoded(),
   let encoded = String(data: data, encoding: .utf8) {
    print(encoded)
}
*/

//Method injection
/*
class Post: Encodable {
    var title: String
    var content: String
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
    func encode(using encoder: Encoder) throws -> Data {
        return try encoder.encode(self)
    }
}

let post = Post(title: "Hello DI", content: "Method injection")

if let data = try? post.encode(using: JSONEncoder()),
   let encoded = String(data: data, encoding: .utf8) {
    print(encoded)
}
*/

//Ambient context
class Post: Encodable {
    var title: String
    var content: String
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
    func encoded() throws -> Data {
        return try Post.encoder.encode(self)
    }
    
    private static var _encoder: Encoder = PropertyListEncoder()
    
    static func setEncoder(_ encoder: Encoder) {
        self._encoder = encoder
    }
    
    static var encoder: Encoder {
        return Post._encoder
    }
}

let post = Post(title: "HEllo DI", content: "Ambient context")
Post.setEncoder(JSONEncoder())

if let data = try? post.encoded(),
   let encoded = String(data: data, encoding: .utf8) {
    print(encoded)
}
