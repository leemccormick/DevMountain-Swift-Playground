import UIKit

// Week 5 Day 1 : Review struct and networking by Bryan.

struct PokemonArea: Decodable {
//    let pokemon: [Pokemon]
    let towns: [Town]
}

struct Town: Decodable {
    let name: String
    let gym: Gym
}

struct Gym: Decodable {
    let name: String
    let leader: Leader
}

struct Leader: Decodable {
    let name: String
    let monsters: [Pokemon]
}

struct Pokemon: Decodable {
    let name: String
    let type: String
    let generation: Int
}


func fetchPokemon(completion: @escaping ([Pokemon]) -> Void) {
    // https://www.pokemon.api/towns/gyms/leaders/pokemon.json.api.php?type=fire?power=flamethrower
    guard let baseURL = URL(string: "https://www.pokemon.api") else {return completion([])}
    
    let townsURL = baseURL.appendingPathComponent("towns")
    let gymsURL = townsURL.appendingPathComponent("gyms")
    let leadersURL = gymsURL.appendingPathComponent("leaders")
    let pokemonURL = leadersURL.appendingPathComponent("pokemon")
    let jsonURL = pokemonURL.appendingPathExtension("json")
    let apiURL = jsonURL.appendingPathExtension("api")
    let phpURL = apiURL.appendingPathExtension("php")
    
    var components = URLComponents(url: phpURL, resolvingAgainstBaseURL: true)
    let typeQuery = URLQueryItem(name: "type", value: "fire")
    let powerQuery = URLQueryItem(name: "power", value: "flamethrower")
    components?.queryItems = [typeQuery, powerQuery]
    
    guard let finalURL = components?.url else {return completion([])}
    print(finalURL)
    
    //dataTask
    let data = Data()
    
    do {
        let pokemonArea = try JSONDecoder().decode(PokemonArea.self, from: data)
        let towns = pokemonArea.towns
        
        var placeholder: [Pokemon] = []
        for town in towns {
            let pokemon = town.gym.leader.monsters
            placeholder.append(contentsOf: pokemon)
        }
        completion(placeholder)
        
    } catch {
        print(error)
    }
    
}






