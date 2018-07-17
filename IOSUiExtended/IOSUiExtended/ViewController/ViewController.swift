
import UIKit

class ViewController: UIViewController,UITextFieldDelegate  {
 
    @IBOutlet weak var passTextView: UITextField!
    @IBOutlet weak var userTextView: UITextField!
    @IBOutlet weak var loginView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func Test(_ sender: Any) {
        print("awasewas")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y = -100.0
//                UIView.animate(withDuration: 0.3,animations: {
//                    self.view.frame = self.view.frame.offsetBy(dx: 0.0, dy: -90.0)
//
//                })
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if ((notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y = 0
//                UIView.animate(withDuration: 0.3, animations: {
//                    self.view.frame = self.view.frame.offsetBy(dx: 0.0, dy: 90.0)
//                })
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passTextView.resignFirstResponder()
        userTextView.resignFirstResponder()
        return true
    }
    
    
}

