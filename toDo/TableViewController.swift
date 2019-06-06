
import UIKit

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // "変数名.count"で要素数を取得できます。
        return word.count
    }
//セクションの数を決める
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
// 各行のセルを表示する際に呼ばれる処理です。
// この中で表示内容を設定するプログラムを記述します。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// セルのオブジェクトを作成します。
//"NameCell"の部分はStoryboardでセルに設定したIdentifierを指定。
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)

// セルのラベルにwordの要素を表示するように指定しています。
//cell.textLabel はStyleをBasicに指定したセルのラベルです。
        cell.textLabel?.text = word[indexPath.row]
        return cell
    }
    
// セルをデリートする機能を付け加える
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            word.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
       
    }
    

    
}
