import UIKit

     var word2 = [String]()

class AddController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//テキストフィールドの設定
    @IBOutlet weak var textField2: UITextField!
    
    //ボタンが押された時
    @IBAction func add2(_ sender: Any) {
//空白を登録しない、式はもし空白がfalseであれば実行
        if textField2.text!.isEmpty == false {
        word2.append(textField2.text!)
        textField2.text = ""
        UserDefaults.standard.set( word2, forKey: "TodoList2" )
        //元の画面に戻る
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    }
    
}
