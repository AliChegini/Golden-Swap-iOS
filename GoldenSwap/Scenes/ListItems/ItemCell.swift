//
//  ItemCell.swift
//  GoldenSwap
//
//  Created by Ehsan on 19/11/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
         imageView.translatesAutoresizingMaskIntoConstraints = false
         imageView.image = UIImage(named: "gold")
         imageView.contentMode = .scaleAspectFill
         imageView.clipsToBounds = true
    
        return imageView
    }()
    
    
    let userProfileImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "elon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        
       return imageView
    }()
    
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Demo Rocket"
        
        return label
    }()
    
    
    let subtitleTextView: UITextView = {
       let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Elon • 100 views • 2 years ago"
        textView.textColor = .lightGray
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        textView.isEditable = false
        
        return textView
    }()
    
    
    func setupViews() {
        addSubview(thumbnailImageView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)
        
        // horizontal rule for thumbnailImageView
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": thumbnailImageView]))
        
        // horizontal rule for userProfileImageView
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(50)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": userProfileImageView]))
        
        // vertical rules
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[v0]-8-[v1(50)]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": thumbnailImageView, "v1": userProfileImageView]))
        
        // --------
        // top constraints for label
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        
        // left constraints for label
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        // right contraints for label
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        // height constraint for label
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        
        // --------
        // top constraints for subtitleTextView
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
        
        // left constraints for label
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        // right contraints for label
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        // height constraint for label
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))

    }
    
}
