//
//  SwipingController.swift
//  Syncronice
//
//  Created by Didin Firmansyah on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class SwipingController: UIViewController, UICollectionViewDataSource {
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        collection.invalidateLayout()
//
//        let indexPath = IndexPath(item: indicator.currentPage, section: 0)
//        DispatchQueue.main.async {
//            self.collection.collectionView?.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
//        }
//
//    }
    // array gambar
    let gambar = ["OnboardingIll","ill2"]
    // array text
    let desc = ["Syncronice help you to improve compose skill","Syncronice provide ear training for you"]
    //array button
    let sub = ["Skip","Let's Started"]
    //array warna
    let warna = [UIColor(red: 0x22, green: 0x66, blue: 0x66),UIColor.orange]
    
    
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
    //init button
    let skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Skip", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.tintColor = .white
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        return button
    }()
    @objc func pressed(){
        let home = HomeController()
        home.modalTransitionStyle = .crossDissolve
        home.modalPresentationStyle = .overFullScreen
        show(home, sender: nil)  
    }
    // init page indicator
    private let indicator: UIPageControl = {
        let ind = UIPageControl()
        ind.currentPage = 0
        ind.numberOfPages = 2
        ind.currentPageIndicatorTintColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        ind.pageIndicatorTintColor = .gray

        return ind
    }()


    //init collection
    let collection: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        return layout
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set collection
        collection.itemSize = CGSize(width: view.frame.width, height: view.frame.height)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collection)
        collectionView.systemLayoutSizeFitting(CGSize(width: view.frame.width, height: view.frame.height))
        collectionView.register(pageCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo:  view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

            
        ])
        collectionView.dataSource = self
        
        layout()
        setButton()
        
        
    }
    // fungsi collectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gambar.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! pageCell
        
        let imageName = gambar[indexPath.item]
        cell.imageIll.image = UIImage(named: imageName)
        cell.desc.text = desc[indexPath.item]
        skipButton.setTitle(sub[indexPath.item], for: .normal)
        skipButton.backgroundColor = warna[indexPath.item]
        indicator.currentPage = indexPath.item
        return cell
    }
    //fungsi button
    private func setButton(){
        view.addSubview(skipButton)
        skipButton.backgroundColor = UIColor(red: 0x22, green: 0x66, blue: 0x66)
        skipButton.layer.cornerRadius = 10
         let safearea = view.safeAreaLayoutGuide
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
        //title layout
        view.addSubview(appName)
        NSLayoutConstraint.activate([
            appName.topAnchor.constraint(equalTo: safearea.topAnchor, constant: 150),
            appName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
//        // indicator layout
        indicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indicator)
        NSLayoutConstraint.activate([
            indicator.bottomAnchor.constraint(equalTo: safearea.bottomAnchor),
            indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

