import UIKit

// MARK: - Struct
struct Person: Codable {
    var name: String
    var films: [URL]
}

struct Film: Codable {
    var title: String
    var opening_crawl: String
    var release_date: String
}

// MARK: - Networking Controller
class SwapiService {
    
    // need s >> to be secure >> https
    static private let baseURL = URL(string: "https://swapi.dev/api")
    static private let personComponentPath = "people"
    
    static func fetchPerson(id: String, completion: @escaping (Person?) -> Void) {
        // URL
        guard let baseURL = baseURL else {return completion(nil)}
        
        // Please AVOID Using \() String inporation on this url.
        let personURL = baseURL.appendingPathComponent(personComponentPath)
        let finalURL = personURL.appendingPathComponent(id)
        print(finalURL)
        // Component >> needed when you need query items
        // let finalURL = personURL.appendingPathComponent(String(id)) //>> If your id is Int
        URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            if let error = error {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
            }
            
            guard let data = data else {return completion(nil)}
            
            do {
                let decoder = JSONDecoder()
                let person = try decoder.decode(Person.self, from: data)
                completion(person)
            } catch {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                return completion(nil)
            }
        }.resume()
        
    }
    
    static func fetchFilm(url: URL, completion: @escaping (Film?) -> Void) {
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                return completion(nil)
            }
            guard let data = data else { return completion(nil) }
            do {
                let film = try JSONDecoder().decode(Film.self, from: data)
                completion(film)
            } catch {
                print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                return completion(nil)
            }
        }.resume()
    }
}

// MARK: - VC
func fetchFilm(url: URL) {
    SwapiService.fetchFilm(url: url) { (film) in
        if let film = film {
            print(film.title)
        }
    }
}

SwapiService.fetchPerson(id: "1") { (person) in
    if let person = person {
        print(person.name)
    }
    if let person = person {
        for film in person.films {
            fetchFilm(url: film)
        }
    }
}
