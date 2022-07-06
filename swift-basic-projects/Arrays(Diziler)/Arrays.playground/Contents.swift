import UIKit

//ARRAY

var myFavoriteMovies = ["Kill Bill", "Hannah Montana",5,true] as [Any]

//as -> casting
//any -> any object

myFavoriteMovies[0]

var myStringArray = ["Test","Test1","Test3","Test4"]

myStringArray[0].uppercased()

myStringArray.count

myStringArray[myStringArray.count - 2]

myStringArray.last

myStringArray.sort()

var myNumberArray = [1,2,3,4,5,6]
myNumberArray.append(8)
myNumberArray.last

myNumberArray[0] = 15


//SET
//indexleme yok, icinde ayni elemandan bir tane var sadece
//mySet[0] diyemem.Unordered collection
//Elemanlar uniquedir.Mesela 2 sayisini bir defa ekleyebiliriz.

var mySet : Set = [1,2,3,4,5]
var myStringSet : Set = ["a","b","c","a"]

var myInternetArray = [1,2,3,4,2,5,6]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

// union -> birlestirme

var mySet3 = mySet1.union(mySet)
print(mySet3)

//Dictionary
//index yerine key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino", "Stock" : "Guys"]
myFavoriteDirectors["Pulp Fiction"]

myFavoriteDirectors["Pulp Fiction"] = "Quentin"
print(myFavoriteDirectors)

myFavoriteDirectors["Seven Samurai"] = "Akira"
print(myFavoriteDirectors)

var myDictionary = ["Run" : 100, "Swim" :50]
myDictionary["Run"]
