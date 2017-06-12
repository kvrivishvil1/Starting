//
//  SearchScreen.swift
//  register
//
//  Created by UG Lemondo on 6/12/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit



class SearchScreen: UIViewController {

    var dataObject = [UIImage]()
    
    @IBOutlet weak var bottomCollectionView: UICollectionView!
    @IBOutlet weak var topCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchInformation()
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
    }
    
    func fetchInformation () {
        for i in 1..<10 {
            let object = UIImage(named: "avatar_\(i)")
            dataObject.append(object!)
        }
    }

    
}

extension SearchScreen: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let img = dataObject[indexPath.row]
        guard let cell = topCollectionView.dequeueReusableCell(withReuseIdentifier: "xxxSearchCollectionViewCell", for: indexPath) as?SearchCollectionViewCell else {
            fatalError("blabla")
        }
        
        cell.news.image = img
        cell.news.layer.cornerRadius = cell.news.frame.size.width/2.0
        cell.news.layer.masksToBounds = true
        return cell
    }

}
