import UIKit

class ViewController: UIViewController {
    
    static var models = [Cells]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Настройки"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }


}

