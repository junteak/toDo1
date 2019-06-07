import UIKit

     var word3 = [String]()

class AddController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var textField3: UITextField!
    
    @IBAction func add3(_ sender: Any) {
        
        word3.append(textField3.text!)
        
        textField3.text = ""
        
        UserDefaults.standard.set( word3, forKey: "TodoList3" )
        _ = self.navigationController?.popViewController(animated: true)
    }
    
}
