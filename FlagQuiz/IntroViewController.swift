//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import UIKit

class IntroViewController: UIViewController {
    
    var selectedContinent : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = selectedContinent
        if let beginQuiz = segue.destination as? StartViewController {
            beginQuiz.selectedContinentName = selectedContinent
        }
    }
    @IBAction func continentNameButton(_ sender: UIButton) {

        if sender.tag == 0 {
            selectedContinent = "Europe"
        } else if sender.tag == 1 {
            selectedContinent = "Asia"
        } else if sender.tag == 2 {
            selectedContinent = "Africa"
        } else if sender.tag == 3 {
            selectedContinent = "America"
        }
        performSegue(withIdentifier: "beginQuizPage", sender: nil)
    }
}

