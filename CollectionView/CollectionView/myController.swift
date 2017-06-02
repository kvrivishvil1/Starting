//
//  myController.swift
//  CollectionView
//
//  Created by UG Lemondo on 5/31/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class myController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
    }
    
}

extension myController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "xxxcollectionViewCell", for: indexPath) as?collectionViewCell else {
            fatalError("blabla")
        }
        return cell
    }
}
