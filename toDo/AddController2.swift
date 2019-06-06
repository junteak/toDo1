import UIKit

     var word2 = [String]()

class AddController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//テキストフィールドの設定
    @IBOutlet weak var textField2: UITextField!
    
    //追加ボタンの設定
    @IBAction func add2(_ sender: Any) {
    
        word2.append(textField2.text!)
        textField2.text = ""
        UserDefaults.standard.set( word2, forKey: "TodoList2" )
        
    }
    
    
}
