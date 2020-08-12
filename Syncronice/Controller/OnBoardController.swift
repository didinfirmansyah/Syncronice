//
//  OnBoardController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 12/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit
 
class OnBoardController: UIViewController {
    
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
    // init title
    let appName: UILabel = {
        let judul = UILabel()
        judul.text = "Syncronice"
        judul.textAlignment = .center
        judul.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        judul.textColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        //enable autolayout
        judul.translatesAutoresizingMaskIntoConstraints = false
        return judul
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
    //init button
    let skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Skip", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.tintColor = .white
        return button
    }()
    // init page indicator
    private let indicator: UIPageControl = {
        let ind = UIPageControl()
        ind.currentPage = 0
        ind.numberOfPages = 2
        ind.currentPageIndicatorTintColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        ind.pageIndicatorTintColor = .gray
        return ind
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Background
        view.backgroundColor = UIColor.init(rgb: 0xFAFFF0)


        //show Title
        view.addSubview(appName)
        //show sub
        view.addSubview(desc)
        // button
        setButton()
        //indicator
        view.addSubview(indicator)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        //layout
        layout()
        
        self.skipButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
           

    }
    
    @objc private func ButtonPressed(){
        
        let controller = HomeController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    //fungsi button
    private func setButton(){
        let safearea = view.safeAreaLayoutGuide
        view.addSubview(skipButton)
        skipButton.backgroundColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        skipButton.layer.cornerRadius = 10
        
        skipButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                skipButton.bottomAnchor.constraint(equalTo: safearea.bottomAnchor, constant: -30),
                skipButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                skipButton.widthAnchor.constraint(equalToConstant: 200),
                skipButton.heightAnchor.constraint(equalToConstant: 35)
                
            ])
    }
    // fungsi layout
    private func layout(){
        //layout
        let safearea = view.safeAreaLayoutGuide
        
        // create a container
        let imageContainer = UIView()
            //enable autolayout
            imageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        // show container
        view.addSubview(imageContainer)
        imageContainer.addSubview(imageIll)
        
        // image layout
        NSLayoutConstraint.activate([
              imageIll.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
              imageIll.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
              imageIll.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.5)

         ])
        //title layout
        NSLayoutConstraint.activate([
            appName.topAnchor.constraint(equalTo: safearea.topAnchor, constant: 150),
            appName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        //sub layout
        NSLayoutConstraint.activate([
            desc.topAnchor.constraint(equalTo: imageIll.bottomAnchor, constant: 20),
            desc.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        // container layout
        NSLayoutConstraint.activate([
            imageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            imageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        // indicator layout
        NSLayoutConstraint.activate([
            indicator.bottomAnchor.constraint(equalTo: safearea.bottomAnchor),
            indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    
    
}

