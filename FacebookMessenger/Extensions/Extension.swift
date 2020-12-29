//
//  Extension.swift
//  FacebookMessenger
//
//  Created by Habib Durodola on 2020-12-28.
//

import UIKit

extension ProfileCellCollectionViewCell {
     func addAutolayout(){
        var constraints = [NSLayoutConstraint]()

        //MARK:- profileView
        constraints += [NSLayoutConstraint.init(item: profileView, attribute: .centerY, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .centerY, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint.init(item: profileView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 64.0)]

        constraints += [NSLayoutConstraint.init(item: profileView, attribute: .width, relatedBy: .equal, toItem: profileView, attribute: .height, multiplier: 1.0, constant: 0.0)]

        //MARK:- Container

        constraints += [NSLayoutConstraint.init(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .centerY, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: containerView, attribute: .leading, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 64.0)]
        constraints += [NSLayoutConstraint.init(item: containerView, attribute: .trailing, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: containerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 75.0)]


        //MARK:- Separator

        constraints += [NSLayoutConstraint.init(item: separatorView, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .bottom, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint.init(item: separatorView, attribute: .leading, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: 65.0)]

        constraints += [NSLayoutConstraint.init(item: separatorView, attribute: .trailing, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint.init(item: separatorView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 2.0)]

        //MARK: - NAMETEXT
        constraints += [NSLayoutConstraint.init(item: nameText, attribute: .leading, relatedBy: .equal, toItem: containerView, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: nameText, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1.0, constant: -75.0)]
        constraints += [NSLayoutConstraint.init(item: nameText, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .top, multiplier: 1.0, constant: 10.0)]

        //MARK:- MESSAGETEXT

        constraints += [NSLayoutConstraint.init(item: msgText, attribute: .top, relatedBy: .equal, toItem: nameText, attribute: .bottom, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: msgText, attribute: .leading, relatedBy: .equal, toItem: containerView, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: msgText, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1.0, constant: -75.0)]

        //MARK:- TIMETEXT

        constraints += [NSLayoutConstraint.init(item: timeText, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .top, multiplier: 1.0, constant: 10.0)]
        constraints += [NSLayoutConstraint.init(item: timeText, attribute: .leading, relatedBy: .equal, toItem: nameText, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: nameText, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1.0, constant: -50.0)]

        //MARK:- MiniProfileImage

        //MARK:- profileView

        constraints += [NSLayoutConstraint.init(item: miniProfileView, attribute: .top, relatedBy: .equal, toItem: timeText, attribute: .bottom, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint.init(item: miniProfileView, attribute: .leading, relatedBy: .equal, toItem: msgText, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint.init(item: miniProfileView, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint.init(item: miniProfileView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 20.0)]

        constraints += [NSLayoutConstraint.init(item: miniProfileView, attribute: .width, relatedBy: .equal, toItem: profileView, attribute: .height, multiplier: 1.0, constant: 0.0)]


        addConstraints(constraints)

    }

    
}
