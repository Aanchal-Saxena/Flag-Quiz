//
//  ResultsViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var selectedContinent : String = ""
    @IBOutlet var finalImage: UIImageView!
    @IBOutlet var scoreOutlet: UILabel!
    
    var quizScore : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        scoreOutlet.text = "Your Score : \(quizScore)/10"
        finalImage.image = UIImage(named: selectedContinent)
        

        // Do any additional setup after loading the view.
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
