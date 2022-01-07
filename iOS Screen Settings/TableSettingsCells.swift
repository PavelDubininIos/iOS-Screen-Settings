
import UIKit

struct Cells {
    let settings: [CellsTypes]
}

enum CellsTypes {
    case standardCell(model: StandardCell)
    case switchCell(model: SwitchCell)
    case textCell(model: TextCell)
}

struct StandardCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct SwitchCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var isOn: Bool
}

struct TextCell {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var text: String
}

func configure() {
    
    ViewController.models.append(Cells(settings: [
        .switchCell(model: SwitchCell(
            title: "Авиарежим",
            icon: UIImage(systemName: "airplane"),
            iconBackgroundColor: .systemOrange,
            isOn: false)),
        .textCell(model: TextCell(
            title: "Wi-Fi",
            icon: UIImage(systemName: "wifi"),
            iconBackgroundColor: .systemBlue,
            text: "Не подключено")),
        
            .textCell(model: TextCell(
                title: "Bluetooth",
                icon: UIImage(systemName: "b.square.fill"),
                iconBackgroundColor: .systemBlue,
                text: "Вкл.")),
        
            .standardCell(model: StandardCell(
                title: "Сотовая связь",
                icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
                iconBackgroundColor: .systemGreen)),
        
            .standardCell(model: StandardCell(
                title: "Режим модема",
                icon: UIImage(systemName: "personalhotspot"),
                iconBackgroundColor: .systemGreen)),
        
            .switchCell(model: SwitchCell(
                title: "VPN",
                icon: UIImage(systemName: "globe"),
                iconBackgroundColor: .systemBlue,
                isOn: false))
    ]))
    
    ViewController.models.append(Cells(settings: [
        .standardCell(model: StandardCell(
            title: "Уведомления",
            icon: UIImage(systemName: "note"),
            iconBackgroundColor: .systemRed)),
        
            .standardCell(model: StandardCell(
                title: "Звуки, тактильные сигналы",
                icon: UIImage(systemName: "speaker.wave.3.fill"),
                iconBackgroundColor: .systemPink)),
        
            .standardCell(model: StandardCell(
                title: "Не беспокоить",
                icon: UIImage(systemName: "moon.fill"),
                iconBackgroundColor: .systemIndigo)),
        
            .standardCell(model: StandardCell(
                title: "Экранное время",
                icon: UIImage(systemName: "hourglass"),
                iconBackgroundColor: .systemIndigo)),
    ]))
    
    ViewController.models.append(Cells(settings: [
        .standardCell(model: StandardCell(
            title: "Основные",
            icon: UIImage(systemName: "gear"),
            iconBackgroundColor: .systemGray)),
        
            .standardCell(model: StandardCell(
                title: "Пункт управления",
                icon: UIImage(systemName: "slider.horizontal.3"),
                iconBackgroundColor: .systemGray)),
        
            .standardCell(model: StandardCell(
                title: "Экран и яркость",
                icon: UIImage(systemName: "textformat.size"),
                iconBackgroundColor: .systemBlue)),
        
            .standardCell(model: StandardCell(
                title: "Экран «‎Домой»‎",
                icon: UIImage(systemName: "apps.iphone"),
                iconBackgroundColor: .systemIndigo)),
        
            .standardCell(model: StandardCell(
                title: "Универсальный доступ",
                icon: UIImage(systemName: "figure.stand"),
                iconBackgroundColor: .systemBlue)),
    ]))
}
