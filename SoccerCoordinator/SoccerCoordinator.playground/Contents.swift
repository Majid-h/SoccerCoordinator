

// PART ONE


// Listing of players

let joeSmith: [String: String] = ["Name": "Joe Smith", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Jim and Jan Smith"]
let jillTanner: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Soccer Experience": "yes", "Guardian Names": "Clara Tanner"]
let billBon: [String: String] = ["Name": "Bill Bon", "Height": "43", "Soccer Experience": "yes", "Guardian Names": "Sara and Jenny Bon"]
let evaGordon: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Soccer Experience": "no", "Guardian Names": "Wendy and Mike Gordon"]
let mattGill: [String: String] = ["Name": "Matt Gill", "Height": "40", "Soccer Experience": "no", "Guardian Names": "Charles and Sylvia Gill"]
let kimmyStein: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Soccer Experience": "no", "Guardian Names": "Bill and Hillary Stein"]
let sammyAdams: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Soccer Experience": "no", "Guardian Names": "Jeff Adams"]
let karlSaygan: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Heather Bledsoe"]
let suzanneGreenberg: [String: String] = ["Name": "SuzanneGreenberg", "Height": "44", "Soccer Experience": "yes", "Guardian Names": "Henrietta Dumas"]
let salDali: [String: String] = ["Name": "Sal Dali", "Height": "41", "Soccer Experience": "no", "Guardian Names": "Gala Dali"]
let joeKavalier: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Soccer Experience": "no", "Guardian Names": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Soccer Experience": "no", "Guardian Names": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: String] = ["Name": "Diego Soto", "Height": "41", "Soccer Experience": "yes", "Guardian Names": "Robin and Sarika Soto"]
let chloeAlaska: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Soccer Experience": "no", "Guardian Names": "David and Jamie Alaska"]
let arnoldWillis: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Soccer Experience": "no", "Guardian Names": "Claire Willis"]
let phillipHelm: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Soccer Experience": "yes", "Guardian Names": "Thomas Helm and Eva Jones"]
let lesClay: [String: String] = ["Name": "Les Clay", "Height": "42", "Soccer Experience": "yes", "Guardian Names": "Wynonna Brown"]
let herschelKrustofski: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Soccer Experience": "yes", "Guardian Names": "Hyman and Rachel Krustofski"]

// All players in one group


var players: [[String:String]] = [joeSmith, jillTanner,billBon, evaGordon, mattGill, kimmyStein, sammyAdams , karlSaygan , suzanneGreenberg , salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski ]


// PART TWO

var experiencedPlayers: [[String:String]] = []
var inExperiencedPlayers: [[String:String]] = []

var teamSharks:[[String:String]] = []
var teamDragons:[[String:String]] = []
var teamRaptors:[[String:String]] = []

for xpPlayer in players {
    for (key, value) in xpPlayer {
        if(value == "yes") {
            experiencedPlayers.append(xpPlayer)
        } else if (value == "no"){
            inExperiencedPlayers.append(xpPlayer)
        }
    }
}

// adding experience players to the teams

for i in experiencedPlayers {
    if teamSharks.count < 3  {
        teamSharks.append(i)
        print(teamSharks)
        
    } else if teamRaptors.count < 3 {
        teamRaptors.append(i)
        print(teamRaptors)
        
    } else if teamDragons.count < 3 {
        teamDragons.append(i)
        print(teamDragons)
    }
}

// adding inexperience players to the teams

for i in inExperiencedPlayers {
    if teamSharks.count < 6  {
        teamSharks.append(i)
        
    } else if teamRaptors.count < 6 {
        teamRaptors.append(i)
        print(teamRaptors)
        
    } else if teamDragons.count < 6 {
        teamDragons.append(i)

    }
    
}

// PART THREE

var letters: [String] = []

for player in teamSharks {
    letters.append("Hello Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been selected for the team Sharks! The first practice is March 17th at 3PM.")
}

for player in teamDragons {
    letters.append("HEllo Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been selected for the team Dragons! The first practice is March 17th at 1PM.")
}


for player in teamRaptors {
    letters.append("Hello Dear \(player["Guardian Names"]!), your child, \(player["Name"]!), has been selected for the team Raptors! The first practice is March 18th at 1PM.")
}

letters.count


for i in 0..<letters.count {
    print(letters[i])
}







