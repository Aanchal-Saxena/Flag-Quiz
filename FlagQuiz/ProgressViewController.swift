//
//  ProgressViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 20/04/24.
//

import UIKit

class ProgressViewController: UIViewController {

    @IBOutlet var europeQuizScoreLabel: UILabel!
    @IBOutlet var asiaQuizScoreLabel: UILabel!
    @IBOutlet var africaQuizScoreLabel: UILabel!
    @IBOutlet var americaQuizScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        asiaQuizScoreLabel.text = "\(AllScores.asiaQuizScore)/\(asianQuizQuestions.count)"
        
        americaQuizScoreLabel.text = "\(AllScores.americaQuizScore)/\(americanQuizQuestions.count)"
        africaQuizScoreLabel.text = "\(AllScores.africaQuizScore)/\(africanQuizQuestions.count)"
        europeQuizScoreLabel.text = "\(AllScores.europeQuizScore)/\(europeanQuizQuestions.count)"
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        asiaQuizScoreLabel.text = "\(AllScores.asiaQuizScore)/\(asianQuizQuestions.count)"
        
        americaQuizScoreLabel.text = "\(AllScores.americaQuizScore)/\(americanQuizQuestions.count)"
        africaQuizScoreLabel.text = "\(AllScores.africaQuizScore)/\(africanQuizQuestions.count)"
        europeQuizScoreLabel.text = "\(AllScores.europeQuizScore)/\(europeanQuizQuestions.count)"
        
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
