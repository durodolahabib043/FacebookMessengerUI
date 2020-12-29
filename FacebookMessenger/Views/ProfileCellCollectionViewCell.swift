//
//  ProfileCellCollectionViewCell.swift
//  FacebookMessenger
//
//  Created by Habib Durodola on 2020-12-28.
//

import UIKit

class ProfileCellCollectionViewCell: UICollectionViewCell {

    lazy var profileView : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(named: "heart_second")?.withRenderingMode(.alwaysOriginal)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .red
        return image
    }()

    lazy var separatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let nameText : UILabel = {
        let label = UILabel()
        label.text = "Durodola Habib"
        label.backgroundColor = . blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let msgText : UILabel = {
        let label = UILabel()
        label.text = "This is the message profile text Durodola Habib "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let timeText : UILabel = {
        let label = UILabel()
        label.text = "12:02 PM"
       // label.textAlignment = .right
        label.backgroundColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var miniProfileView : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(named: "heart_second")?.withRenderingMode(.alwaysOriginal)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .red
        return image
    }()



    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        addSubview(profileView)
        setupContainerView()
        addSubview(separatorView)
        addAutolayout()

    }

    func setupContainerView(){
        addSubview(containerView)
        containerView.addSubview(nameText)
        containerView.addSubview(msgText)
        containerView.addSubview(timeText)
        containerView.addSubview(miniProfileView)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - HANDLERS

    
}
