//: [Previous](@previous)

import Foundation

class MovieArchive {
    func filterByYear(year:Int, movies:Dictionary<String, Int> ) -> [String]{
        var filteredArray = [String]()
        for (movie, releaseDate) in movies {
            if year == releaseDate {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
    
}

var aiThemedMovies = ["Metropolis": 1927, "2001: A Space Odyssey": 1968, "Blade Runner": 1982, "War Games": 1983, "Terminator": 1984, "The Matrix": 1999, "A.I.": 2001, "Her": 2013, "Ex Machina": 2015]

var myArchive = MovieArchive()
myArchive.filterByYear(year: 2013
    , movies: aiThemedMovies)

let timeAllowed: Int

//: [Next](@next)
