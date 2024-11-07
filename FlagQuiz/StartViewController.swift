//
//  StartViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import UIKit

class StartViewController: UIViewController {
    
    var selectedContinentName : String = ""

    @IBOutlet var selectedContinentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        selectedContinentImage.image = UIImage(named: selectedContinentName)
    }
    @IBAction func startQuizButton(_ sender: UIButton) {
        performSegue(withIdentifier: "quizPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if selectedContinentName != "Europe" {
            segue.destination.navigationItem.title = "\(selectedContinentName)n Countries"
        } else {
                segue.destination.navigationItem.title = "\(selectedContinentName)an Countries"
            }
        if let startQuiz = segue.destination as? QuizViewController {
            startQuiz.selectedContinent = selectedContinentName
        }
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
