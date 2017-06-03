//
//  mainController.swift
//  Instagram
//
//  Created by UG Lemondo on 6/2/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class mainController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var dataObject = [NewsFeedUser]()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchInformation()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func fetchInformation () {
        for i in 1..<10 {
            let object = NewsFeedUser()
            object.avatar = UIImage(named: "avatar_\(i)")
            object.picture = UIImage(named: "picture_\(i)")
            
            object.name = "MilaJovovicOfficial_\(i)"
            object.views = "\(i) views"
            object.upload = "\(i) days ago"
            
            dataObject.append(object)
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

} // ClassEnd

// MARK: - UICollectionViewDelegate & UICollectionViewDataSource
extension mainController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let img = dataObject[indexPath.row].avatar
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "xxxCollectionViewCell", for: indexPath) as?CollectionViewCell else {
            fatalError("blabla")
        }
        
        cell.news.image = img
        cell.news.layer.cornerRadius = cell.news.frame.size.width/2.0
        cell.news.layer.masksToBounds = true
        return cell
    }
}

// MARK: - UITableViewDelegate & UITableViewDataSource
extension mainController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "xxxTableViewCell", for: indexPath) as? TableViewCell else {
            fatalError("Could not dequeue cell with identifier xxxTableViewCell")
        }
        
        let object = dataObject[indexPath.row]
        
        // Data Assign
        
        cell.avatar.image = object.avatar
        cell.mainImage.image = object.picture
        cell.lblName.text = object.name
        cell.lblAgo.text = object.upload
        cell.lblViews.text = object.views
        
        // Make Circle Avatar
        cell.avatar.layer.cornerRadius = cell.avatar.frame.size.width/2.0
        cell.avatar.layer.masksToBounds = true
        
        // Make Border Outline
        cell.avatar.layer.borderColor = UIColor.lightGray.cgColor
        cell.avatar.layer.borderWidth = 1.0
        
        return cell
    }

}
