
import UIKit

class TextViewCell: UITableViewCell {
    
    static let indentifier = "LabelViewCell"
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let rightText: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)
        rightText.sizeToFit()
        rightText.frame = CGRect(x: (contentView.frame.size.width - 8 - rightText.frame.size.width),
                                 y: (contentView.frame.size.height - rightText.frame.size.height)/2,
                                 width: rightText.frame.size.width,
                                 height: rightText.frame.size.height)
        let imageSize: CGFloat = size/1.5
        
        iconImage.frame = CGRect(x: (size - imageSize)/2,
                                     y: (size - imageSize)/2,
                                     width: imageSize,
                                     height: imageSize)
        
        title.frame = CGRect(x: 25 + iconContainer.frame.size.width,
                            y: 0,
                            width: contentView.frame.size.width - 20 - iconContainer.frame.size.width,
                            height: contentView.frame.size.height)
    }
    
    func setupHierarchy() {
        contentView.addSubview(title)
        contentView.addSubview(iconContainer)
        contentView.addSubview(rightText)
        iconContainer.addSubview(iconImage)
    }
}

