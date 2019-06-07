
import UIKit

    var word = [String]()

class AddController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //テキストフィールドの設定
    @IBOutlet weak var textField: UITextField!
    //ボタンがお押された時
    @IBAction func add(_ sender: Any) {
        //変数に入力内容を入れる
        word.append(textField.text!)
        //追加ボタンを押したらフィールドを空にする
        textField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set( word, forKey: "TodoList" )
        //元の画面に戻る
        _ = self.navigationController?.popViewController(animated: true)
        
    }
   

}
