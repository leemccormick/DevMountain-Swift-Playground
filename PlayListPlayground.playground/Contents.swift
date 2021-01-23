import UIKit

var str = "Hello, playground"

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jack = Person(name: "Jack", age: 20)
let jill = Person(name: "Jill", age: 20)

jack.name = "Jill"

// Songs

class Song {
    
    let title: String
    let artist: String
    
    
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
}


class SongController {
    
    // To save memory at the same place
    // Shared Instance
    static let shared = SongController() //100
    
    // Source of Truth (S.O.T)
    var songs: [Song] = []
    
    
    // CRUD Methods
        //Create a song and add to songs
    func createSong(newSongtitle: String, newSongartist: String) {
       
        // create a song
        let newSong = Song(title: newSongtitle, artist: newSongartist)
    
        // add it to songs array
        //SongController.shared.songs.append(newSong) >> Why not this ???
        songs.append(newSong)
        
        // save
        
        
    }
    
    
        //Read >> Go to the network and find data and turn it to the song.
        
        // TODO: - Update
    
        //Delete
    func DeleteSong() {
        // remove a song from songs array
        
        
        // save
    }
    
    
}

print(SongController.shared.songs.count)
SongController.shared.createSong(newSongtitle: "Fix You", newSongartist: "ColdPlay")
SongController.shared.createSong(newSongtitle: "Fix You Again", newSongartist: "ColdPlay")


print(SongController.shared.songs.count)

