//
//  pageCell.swift
//  Syncronice
//
//  Created by Didin Firmansyah on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class pageCell: UICollectionViewCell {
    
    // init image
    let imageIll: UIImageView = {
        let imageName = "OnboardingIll"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = .scaleAspectFit
        //enable autolayout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    // init description
    let desc: UILabel = {
        let subTitle = UILabel()
        subTitle.text = "Syncronice help you to improve compose skill"
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 16)
        subTitle.textColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        //enable autolayout
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        return subTitle
    }()
    
    
    // init cell
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 250, green: 255, blue: 240, alpha: 100)
        layout()
//        indicator.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // fungsi layout
    private func layout(){
        // create a container
        let imageContainer = UIView()
            //enable autolayout
            imageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        // show container
        addSubview(imageContainer)
        imageContainer.addSubview(imageIll)
        
        // image layout
        NSLayoutConstraint.activate([
              imageIll.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
              imageIll.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
              imageIll.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.5)

         ])
//        //sub layout
        addSubview(desc)
        NSLayoutConstraint.activate([
            desc.topAnchor.constraint(equalTo: imageIll.bottomAnchor, constant: 20),
            desc.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
//        // container layout
        NSLayoutConstraint.activate([
            imageContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5),
            imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageContainer.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

