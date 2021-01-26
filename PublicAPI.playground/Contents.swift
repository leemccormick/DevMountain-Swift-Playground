import UIKit

// MARK: - Info
/*
 https://api.publicapis.org
 Welcome to the official public API for the public-apis project!
 This service supports CORS and requires no authentication to use. All responses are sent over HTTPS as well.
 
 Goals   1) fetch all categories >> https://api.publicapis.org/categories
 2) fetch all entry for a specific category >> https://api.publicapis.org/entries?category=Photography
 
 */

// MARK: - Struct
struct TopLevelObject: Decodable { // named the JSON on can be anything on TopLevelObject
    //count and entries need to be identical to the key on web
    let count: Int
    let entries: [Entry] //Entries contains array of Entry >> Enry Also need to Decodable
}

// Creat an object of Entry to fetchEntriesForCategory
struct Entry: Decodable {
    // API need to be exactly of the key
    let API: String
    let Description: String
    //Do Not Need to include all keys that we don't need. It just throw the data away.
    //    let Auth: String
    //    let HTTPS: Bool
    //    let Cors: String
    //    let Link: String
    let Category: String
}

// MARK: - EntryController
class EntryController {
    
    // MARK: - baseURL
    // https://api.publicapis.org/categories
    // create base URL //this URL is optional because it migth be back nil
    static let baseURL = URL(string: "https://api.publicapis.org")
    
    //______________________________________________________________________________________
    // MARK: - fetchAllCategories Function
    
    // (completion: @escaping () -> Void) -> Void is a function return Void
    // (completion: Name
    // @escaping () Parameter
    // ([String])
    // return -> Void === when you call this completion handler you need to return nothing back, This case VOID NOT NEEDED to bounch back to fetchAllCategories()
    // @escaping >> this completion will happen after completion ended. This case means after we get back from the internet.
    static func fetchAllCategories(completion: @escaping ([String]) -> Void) {
        
        guard let baseURL = baseURL else { return completion([]) }
        // appendingPathComponent("categories") = /categories
        let categoryURL = baseURL.appendingPathComponent("categories")
        
        print(categoryURL) //Help debugging >> URL infect Case sensitive
        
        // Completion Handler >> { (...) in ..
        // dataTask function going to URL then fetch the data, it should take how long depended on their computer, how big of files
        // This .dataTask will pause anything while fetching then finish with .resume()
        // (<#Data?#>, <#URLResponse?#>, <#Error?#>) // is data from fetching could come back with those data, response, error.
        URLSession.shared.dataTask(with: categoryURL) { (data, _, error) in
            
            //if you have error then print out and return
            //we can't continue if we have an error
            if let error = error {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
                completion([]) //return empty array
                return
            }
            
            // we did not have any data from the fetch, just exist after this guard line
            guard let data = data else { return completion([]) } //return empty array if data is nil
            
            //Decodable >> Get the data then decode it
            
            do {
                // covert data to array Of String
                // .self always HAVE .self
                // [String] >> Already conform the Decodable
                let categories = try JSONDecoder().decode([String].self, from: data)
                //print(categories)
                completion(categories) //if it is Data then return array of String of categories
                
            } catch {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
                return completion([])
                // after you have an error just return out of the function.
            }
        }.resume()
    }
    
    //______________________________________________________________________________________
    
    // MARK: - fetchEntriesForCategory Function
    static func fetchEntriesForCategory(category: String, completion: @escaping ([Entry]) -> Void) {
        
        // ?category=Photography >>> `?category` == key AND `=Photography` == value
        // https://api.publicapis.org/entries?category=Photography
        guard let baseURL = baseURL else {return  completion([]) } // ==>>        // https://api.publicapis.org
        
        let entriesURL = baseURL.appendingPathComponent("entries") // ==>>  https://api.publicapis.org/entries
        
        // create component for ?category=Photography
        var components = URLComponents(url: entriesURL, resolvingAgainstBaseURL: true) //Always true at the time being .. learn more later
        
        let categoryQuery = URLQueryItem(name: "category", value: category) //pass in from the user or this function
        
        components?.queryItems = [categoryQuery]
        
        guard let finalURL = components?.url else { return completion([]) }  // ==>> https://api.publicapis.org/entries?category=Photography
        
        print(finalURL)
        
        URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            print("Getting here...")
            // Handler the error
            if let error = error {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
            }
            
            guard let data = data else { return completion([]) }
            
            do {
                // Always Decode from THE TopLevel Obeject down and conform Decodable
                let topLevelObject = try JSONDecoder().decode(TopLevelObject.self, from: data)
                
                // Access to entries on the TopLevelObject Struct
                let entries = topLevelObject.entries
                completion(entries)
            } catch {
                print("======== ERROR ========")
                print("Function: \(#function)")
                print("Error: \(error)")
                print("Description: \(error.localizedDescription)")
                print("======== ERROR ========")
                completion([])
                return
            }
        }.resume()
    }
} //END OF CLASS

// MARK: - Calling EntryController on the View Controller

// It getting data catagories or []
// (categories) >> the name what we get back, and it represent data that we are getting back.
// we are using the closure of completion handler == call back function to display data the got sent back to display in the view using EntryController
// Pretend this ViewController
EntryController.fetchAllCategories { (categories) in
    /* for category in categories {
     print(category)
     }
     */
    // fetching from categories[6] >> index of each categories
    EntryController.fetchEntriesForCategory(category: categories[6]) { (entries) in
        for entry in entries {
            print("==========================")
            print(entry.API)
            print(entry.Description)
        }
    }
}


