import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static var models = [Cells]()

    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(SettingsViewCell.self, forCellReuseIdentifier: SettingsViewCell.indentifier)
        table.register(SwitchViewCell.self, forCellReuseIdentifier: SwitchViewCell.indentifier)
        table.register(TextViewCell.self, forCellReuseIdentifier: TextViewCell.indentifier)
        table.delegate = self
        table.dataSource = self
        table.frame = view.bounds
        return table
    }()
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return ViewController.models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.models[section].settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = ViewController.models[indexPath.section].settings[indexPath.row]
        
        switch model.self {
            
        case.standardCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SettingsViewCell.indentifier,
                for: indexPath) as? SettingsViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case.switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SwitchViewCell.indentifier,
                for: indexPath) as? SwitchViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case.textCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TextViewCell.indentifier,
                for: indexPath
            ) as? TextViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = ViewController.models[indexPath.section].settings[indexPath.row]
        
        switch type.self {
        case.standardCell(let model):
            print("Нажата ячейка \(model.title)")
        case.switchCell(let model):
            print("Нажата ячейка \(model.title)")
        case.textCell(let model):
            print("Нажата ячейка \(model.title)")
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Настройки"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.view.addSubview(tableView)
        configure()
    }
}
