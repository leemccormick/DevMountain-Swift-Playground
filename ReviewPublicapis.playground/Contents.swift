import UIKit

// Week 4 Day 4 : NETWORKING

//  https://api.publicapis.org/entries?category=Photography
//  MARK: - Struct
struct TopLevelObject: Decodable {
    let count: Int
    let entries: [Entry]
}

// Creat an object of Entry to fetchEntriesForCategory
struct Entry: Decodable {
    let API: String
    let Description: String
    let Category: String
}

class EntryController {
    static let baseURL = URL(string: "https:api.publicapis.org")
    static let entriesEndPoint = "entries"
    static let categoryEndPoint = "category"
    static let topicsQuery = "topics"
    static let phpExtension = "php"
    
    static func fetchAllCategories(searchTerm: String, topic: String, completion: @escaping ([String]) -> Void) {
        guard let baseURL = baseURL else {return completion([])}
        let entriesURL = baseURL.appendingPathComponent(entriesEndPoint)
        
        let phpURL = entriesURL.appendingPathExtension(phpExtension)
        
        var components = URLComponents(url: phpURL, resolvingAgainstBaseURL: true)
        let queryCategory = URLQueryItem(name: categoryEndPoint, value: searchTerm)
        let queryTopic = URLQueryItem(name: topicsQuery, value: topic)
        components?.queryItems = [queryCategory, queryTopic]
        guard let finalURL = components?.url else { return completion([])}
        
        print(finalURL)
        // https://api.publicapis.org/entries.php?category=Photography?topics=topic
    }
}

/*
 
 struct TopLevelObject: Decodable {
 let count: Int
 let entries: [Entry]
 }
 
 struct Entry: Decodable {
 let API: String
 let Description: String
 let Auth: String
 let HTTPS: Bool
 let Cors: String
 let Link: String
 let Category: String
 }
 
 struct TopLevelArray: Decodable {
 let fish: Fish
 }
 
 struct Fish: Decodable {
 let id: Int
 let price: Int
 }
 
 
 class EntryController {
 
 // http://api.publicapis.org/entries.php?categories=category?topics=topic
 
 static let baseURL = URL(string: "http://api.publicapis.org")
 static let categoriesEndpoint = "categories"
 static let entriesEndPoint = "entries"
 static let topicsEndPoint = "topics"
 static let phpExtension = "php"
 
 static func fetchAllCategories(searchTerm: String, topic: String, completion: @escaping ([Fish]) -> Void) {
 
 guard let baseURL = baseURL else {return completion([])}
 let entriesURL = baseURL.appendingPathComponent(entriesEndPoint)
 let phpURL = entriesURL.appendingPathExtension(phpExtension)
 
 var components = URLComponents(url: phpURL, resolvingAgainstBaseURL: true)
 let categoriesQuery = URLQueryItem(name: categoriesEndpoint, value: searchTerm)
 let topicsQuery = URLQueryItem(name: topicsEndPoint, value: topic)
 components?.queryItems = [categoriesQuery, topicsQuery]
 
 guard let finalURL = components?.url else {return completion([])}
 print(finalURL)
 }
 
 */
