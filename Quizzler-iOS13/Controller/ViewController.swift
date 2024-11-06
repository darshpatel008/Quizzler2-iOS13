
import UIKit

class ViewController: UIViewController {
    
   var quizBrain = QuizBrain()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressIndicator: UIProgressView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var option3Button: UIButton!
    
    @IBOutlet weak var option2Button: UIButton!
    
    @IBOutlet weak var option1Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
    }
    
   
    @IBAction func tappedButton(_ sender: UIButton)
        {
            let selectedOption = sender.currentTitle
            
            let verifiedAnswer =  quizBrain.checkAnswer(answer:selectedOption!)
            
           if(verifiedAnswer)
            {
               sender.backgroundColor = UIColor.green
            }
            else
            {
                sender.backgroundColor = UIColor.red
            }
            
            quizBrain.newQuestion()
            
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI) , userInfo: nil, repeats: false)
        }
    
    @objc func updateUI()
    {
        
        option1Button.backgroundColor = UIColor.clear
        option2Button.backgroundColor = UIColor.clear
        option3Button.backgroundColor = UIColor.clear
        
        
        let currentQuestion = quizBrain.gotQuestion()
        questionLabel.text = currentQuestion
        
        let currentOption = quizBrain.gotOptions()
        option1Button.setTitle( currentOption[0], for: .normal)
       
        option2Button.setTitle( currentOption[1], for: .normal)
       
        option3Button.setTitle( currentOption[2], for: .normal)
        
        let c = quizBrain.progressBar()
        
        progressIndicator.progress = c
        
        let d = quizBrain.ourScore()
        
        scoreLabel.text = "Score:\(d)"
    }
    
}

