import UIKit

// Creating a movie model

class Movie {
    var title: String
    var length: Int
    
    init(title: String, length: Int) {
        self.title = title
        self.length = length
    }
}

// creating a movie variable, that can hold the value of a movie, but can also be nil (this is what makign a variable optional does).

var movie2 = Movie(title: "1917", length: 140)
var movie: Movie? //= movie2


// function printing our movie & it's details, usign a guard-let
func printMovieDetails() -> Bool  {
   
    print(movie)
    //Return something that function need Bool..
    guard let movie = movie else { print("line 16 has not yet been assigned a value."); return true}
   
    print(movie.title)
    print("This function is finished running...")
    return false
}

printMovieDetails()
/* Notice, nothing prints. The guard let line says, if we have a movie, assign it to this new constant (also called movie in this case - we coud have named it something else), and if we don't have a movie (as in, if movie is stil nil), return out of the function. We are literally guarding our code from executing if we don't have a value. You will notice in this case, we will only get one print out, the print statement prior to the guard. Because the movie is nil, neither of our print statements after the guard will run. */



// function printing our movie & it's details, usign a if-let
func printMovieDetails2() {
    print(movie)
    if let movie = movie {
        print(movie.title)
    }
    print("This function is finished running...")
}

printMovieDetails2()
/* In the example of an if let, the if let line checks to see if we have a movie. If we do (as in the movie is not nil) we will execute the code inside of the if-let code block. If we do not, we will not, we will not return out of the function like we do with a guard, rather, we will simply skip over the if-let's block of code, and continue to execute any other functionality we have. In this case, our final print statement will still print, because it is not within the scope of the if-let. */
