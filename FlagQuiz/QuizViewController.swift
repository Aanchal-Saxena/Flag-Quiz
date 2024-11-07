//
//  QuizViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import UIKit

class QuizViewController: UIViewController {
    
    var selectedContinent : String = ""
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionIndexLabel: UILabel!
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var optionFlags: [UIButton]!
    
    var quizQuestions : [Question] = []
    var counter : Int = 0
    var optionsSelected : [Int] = []
    var quizScore : Int =  0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        questionLabel.text = "Identify this Flag!"
        counter = 0
        if selectedContinent == "Asia" {
            quizQuestions = asianQuizQuestions
        } else if selectedContinent == "Europe" {
            quizQuestions = europeanQuizQuestions
        } else if selectedContinent == "Africa" {
            quizQuestions = africanQuizQuestions
        } else if selectedContinent == "America" {
            quizQuestions = americanQuizQuestions
        }
        
        flagImage.image = quizQuestions[counter].correctCountry.flagImage
        
        for i in 0...3 {
            optionFlags[i].setTitle(quizQuestions[counter].options[i].name, for: .normal)
        }
        
        questionIndexLabel.text = "Question \(counter+1)/10"
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fourthQuizVC = segue.destination as? ResultsViewController {
            fourthQuizVC.selectedContinent = self.selectedContinent
            fourthQuizVC.quizScore = self.quizScore
        }
    }
    
    @IBAction func flagOptionsTapped(_ sender: UIButton) {
        optionsSelected.append(sender.tag)
        if sender.tag == quizQuestions[counter].correctOptionNumber {
            quizScore += 1
        }
        counter += 1
        if counter <= 9 {
            flagImage.image = quizQuestions[counter].correctCountry.flagImage
            for i in 0...3 {
                optionFlags[i].setTitle(quizQuestions[counter].options[i].name, for: .normal)
            }
            questionIndexLabel.text = "\(counter+1) of 10"
        } else {
            for button in optionFlags {
                button.isEnabled = false
            }
            print("Quiz Over")
            print(quizScore)
            if selectedContinent == "Asia" {
                AllScores.asiaQuizScore = quizScore
            } else if selectedContinent == "Africa" {
                AllScores.africaQuizScore = quizScore
            } else if selectedContinent == "America" {
                AllScores.americaQuizScore = quizScore
            } else if selectedContinent == "Europe" {
                AllScores.europeQuizScore = quizScore
            }
            performSegue(withIdentifier: "QuizSegue3", sender: nil)
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
