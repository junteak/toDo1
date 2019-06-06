import UIKit

// ViewControllerクラスに記述？
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
    // セルの選択を解除
    tableView.deselectRow(at: indexPath, animated: true)
    // 別の画面に遷移
    performSegue(withIdentifier: "移動したいところ", sender: nil)

}

