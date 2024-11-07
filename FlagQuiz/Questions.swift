//
//  Questions.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import Foundation
import UIKit

enum Continent : String {
    case asia = "Asia", europe = "Europe", america = "America", africa = "Africa";
}

struct Country{
    var name : String
    var flagImage : UIImage
    var continent : Continent
}

struct Question {
    var correctCountry : Country
    var options : [Country]
    var correctOptionNumber : Int
}

let asianCountries:[Country] = [
    Country(name: "India", flagImage: UIImage(named: "India")!, continent: .asia),
    Country(name: "Japan", flagImage: UIImage(named: "Japan")!, continent: .asia),
    Country(name: "Jordan", flagImage: UIImage(named: "Jordan")!, continent: .asia),
    Country(name: "Kyrgyzstan", flagImage: UIImage(named: "Kyrgyzstan")!, continent: .asia),
    Country(name: "Laos", flagImage: UIImage(named: "Laos")!, continent: .asia),
    Country(name: "Maldives", flagImage: UIImage(named: "Maldives")!, continent: .asia),
    Country(name: "Myanmar", flagImage: UIImage(named: "Myanmar")!, continent: .asia),
    Country(name: "Nepal", flagImage: UIImage(named: "Nepal")!, continent: .asia),
    Country(name: "Turkey", flagImage: UIImage(named: "Turkey")!, continent: .asia),
    Country(name: "United Arab Emirates", flagImage: UIImage(named: "UnitedArabEmirates")!, continent: .asia)]

let asianQuizQuestions:[Question] = [
Question(correctCountry: asianCountries[0], options: [asianCountries[2],asianCountries[5],asianCountries[0],asianCountries[9]], correctOptionNumber: 2),
Question(correctCountry: asianCountries[1], options: [asianCountries[0],asianCountries[3],asianCountries[1],asianCountries[5]], correctOptionNumber: 2),
Question(correctCountry: asianCountries[2], options: [asianCountries[8],asianCountries[9],asianCountries[7],asianCountries[2]], correctOptionNumber: 3),
Question(correctCountry: asianCountries[3], options: [asianCountries[1],asianCountries[6],asianCountries[3],asianCountries[9]], correctOptionNumber: 2),
Question(correctCountry: asianCountries[4], options: [asianCountries[0],asianCountries[4],asianCountries[7],asianCountries[9]], correctOptionNumber: 1),
Question(correctCountry: asianCountries[5], options: [asianCountries[5],asianCountries[3],asianCountries[4],asianCountries[8]], correctOptionNumber: 0),
Question(correctCountry: asianCountries[6], options: [asianCountries[8],asianCountries[9],asianCountries[7],asianCountries[6]], correctOptionNumber: 3),
Question(correctCountry: asianCountries[7], options: [asianCountries[1],asianCountries[7],asianCountries[6],asianCountries[2]], correctOptionNumber: 1),
Question(correctCountry: asianCountries[8], options: [asianCountries[0],asianCountries[9],asianCountries[7],asianCountries[8]], correctOptionNumber: 3),
Question(correctCountry: asianCountries[9], options: [asianCountries[3],asianCountries[9],asianCountries[8],asianCountries[5]], correctOptionNumber: 1),

]


let africanCountries:[Country] = [
    Country(name: "Botswana", flagImage: UIImage(named: "Botswana")!, continent: .africa),
    Country(name: "Egypt", flagImage: UIImage(named: "Egypt")!, continent: .africa),
    Country(name: "Ethiopia", flagImage: UIImage(named: "Ethiopia")!, continent: .africa),
    Country(name: "Ghana", flagImage: UIImage(named: "Ghana")!, continent: .africa),
    Country(name: "Mali", flagImage: UIImage(named: "Mali")!, continent: .africa),
    Country(name: "Mozambique", flagImage: UIImage(named: "Mozambique")!, continent: .africa),
    Country(name: "Namibia", flagImage: UIImage(named: "Namibia")!, continent: .africa),
    Country(name: "South Africa", flagImage: UIImage(named: "SouthAfrica")!, continent: .africa),
    Country(name: "Sudan", flagImage: UIImage(named: "Sudan")!, continent: .africa),
    Country(name: "Uganda", flagImage: UIImage(named: "Uganda")!, continent: .africa)]

let africanQuizQuestions:[Question] = [
Question(correctCountry: africanCountries[0], options: [africanCountries[2],africanCountries[5],africanCountries[0],africanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: africanCountries[1], options: [africanCountries[0],africanCountries[3],africanCountries[1],africanCountries[5]], correctOptionNumber: 2),
Question(correctCountry: africanCountries[2], options: [africanCountries[8],africanCountries[9],africanCountries[7],africanCountries[2]], correctOptionNumber: 3),
Question(correctCountry: africanCountries[3], options: [africanCountries[1],africanCountries[6],africanCountries[3],africanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: africanCountries[4], options: [africanCountries[0],africanCountries[4],africanCountries[7],africanCountries[9]], correctOptionNumber: 1),
Question(correctCountry: africanCountries[5], options: [africanCountries[5],africanCountries[3],africanCountries[4],africanCountries[8]], correctOptionNumber: 0),
Question(correctCountry: africanCountries[6], options: [africanCountries[8],africanCountries[9],africanCountries[7],africanCountries[6]], correctOptionNumber: 3),
Question(correctCountry: africanCountries[7], options: [africanCountries[1],africanCountries[7],africanCountries[6],africanCountries[2]], correctOptionNumber: 1),
Question(correctCountry: africanCountries[8], options: [africanCountries[0],africanCountries[9],africanCountries[7],africanCountries[8]], correctOptionNumber: 3),
Question(correctCountry: africanCountries[9], options: [africanCountries[3],africanCountries[9],africanCountries[8],africanCountries[5]], correctOptionNumber: 1),

]

let americanCountries:[Country] = [
    Country(name: "Anguilla", flagImage: UIImage(named: "Anguilla")!, continent: .america),
    Country(name: "Argentina", flagImage: UIImage(named: "Argentina")!, continent: .america),
    Country(name: "Brazil", flagImage: UIImage(named: "Brazil")!, continent: .america),
    Country(name: "Canada", flagImage: UIImage(named: "Canada")!, continent: .america),
    Country(name: "Cuba", flagImage: UIImage(named: "Cuba")!, continent: .america),
    Country(name: "Guatemala", flagImage: UIImage(named: "Guatemala")!, continent: .america),
    Country(name: "Mexico", flagImage: UIImage(named: "Mexico")!, continent: .america),
    Country(name: "Peru", flagImage: UIImage(named: "Peru")!, continent: .america),
    Country(name: "United States of America", flagImage: UIImage(named: "UnitedStates")!, continent: .america),
    Country(name: "Uruguay", flagImage: UIImage(named: "Uruguay")!, continent: .america)]

let americanQuizQuestions:[Question] = [
Question(correctCountry: americanCountries[0], options: [americanCountries[2],americanCountries[5],americanCountries[0],americanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: americanCountries[1], options: [americanCountries[0],americanCountries[3],americanCountries[1],americanCountries[5]], correctOptionNumber: 2),
Question(correctCountry: americanCountries[2], options: [americanCountries[8],americanCountries[9],americanCountries[7],americanCountries[2]], correctOptionNumber: 3),
Question(correctCountry: americanCountries[3], options: [americanCountries[1],americanCountries[6],americanCountries[3],americanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: americanCountries[4], options: [americanCountries[0],americanCountries[4],americanCountries[7],americanCountries[9]], correctOptionNumber: 1),
Question(correctCountry: americanCountries[5], options: [americanCountries[5],americanCountries[3],americanCountries[4],americanCountries[8]], correctOptionNumber: 0),
Question(correctCountry: americanCountries[6], options: [americanCountries[8],americanCountries[9],americanCountries[7],americanCountries[6]], correctOptionNumber: 3),
Question(correctCountry: americanCountries[7], options: [americanCountries[1],americanCountries[7],americanCountries[6],americanCountries[2]], correctOptionNumber: 1),
Question(correctCountry: americanCountries[8], options: [americanCountries[0],americanCountries[9],americanCountries[7],americanCountries[8]], correctOptionNumber: 3),
Question(correctCountry: americanCountries[9], options: [americanCountries[3],americanCountries[9],americanCountries[8],americanCountries[5]], correctOptionNumber: 1),

]

let europeanCountries:[Country] = [
    Country(name: "Denmark", flagImage: UIImage(named: "Denmark")!, continent: .europe),
    Country(name: "Finland", flagImage: UIImage(named: "Finland")!, continent: .europe),
    Country(name: "France", flagImage: UIImage(named: "France")!, continent: .europe),
    Country(name: "Germany", flagImage: UIImage(named: "Germany")!, continent: .europe),
    Country(name: "Greenland", flagImage: UIImage(named: "Greenland")!, continent: .europe),
    Country(name: "Italy", flagImage: UIImage(named: "Italy")!, continent: .europe),
    Country(name: "Norway", flagImage: UIImage(named: "Norway")!, continent: .europe),
    Country(name: "Spain", flagImage: UIImage(named: "Spain")!, continent: .europe),
    Country(name: "Switzerland", flagImage: UIImage(named: "Switzerland")!, continent: .europe),
    Country(name: "Ukraine", flagImage: UIImage(named: "Ukraine")!, continent: .europe)]

let europeanQuizQuestions:[Question] = [
Question(correctCountry: europeanCountries[0], options: [europeanCountries[2],europeanCountries[5],europeanCountries[0],europeanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: europeanCountries[1], options: [europeanCountries[0],europeanCountries[3],europeanCountries[1],europeanCountries[5]], correctOptionNumber: 2),
Question(correctCountry: europeanCountries[2], options: [europeanCountries[8],europeanCountries[9],europeanCountries[7],europeanCountries[2]], correctOptionNumber: 3),
Question(correctCountry: europeanCountries[3], options: [europeanCountries[1],europeanCountries[6],europeanCountries[3],europeanCountries[9]], correctOptionNumber: 2),
Question(correctCountry: europeanCountries[4], options: [europeanCountries[0],europeanCountries[4],europeanCountries[7],europeanCountries[9]], correctOptionNumber: 1),
Question(correctCountry: europeanCountries[5], options: [europeanCountries[5],europeanCountries[3],europeanCountries[4],europeanCountries[8]], correctOptionNumber: 0),
Question(correctCountry: europeanCountries[6], options: [europeanCountries[8],europeanCountries[9],europeanCountries[7],europeanCountries[6]], correctOptionNumber: 3),
Question(correctCountry: europeanCountries[7], options: [europeanCountries[1],europeanCountries[7],europeanCountries[6],europeanCountries[2]], correctOptionNumber: 1),
Question(correctCountry: europeanCountries[8], options: [europeanCountries[0],europeanCountries[9],europeanCountries[7],europeanCountries[8]], correctOptionNumber: 3),
Question(correctCountry: europeanCountries[9], options: [europeanCountries[3],europeanCountries[9],europeanCountries[8],europeanCountries[5]], correctOptionNumber: 1),
]

class AllScores{
    static var asiaQuizScore = 0
    static var americaQuizScore = 0
    static var europeQuizScore = 0
    static var africaQuizScore = 0
    
}
