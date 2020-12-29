//
//  ViewController.swift
//  FacebookMessenger
//
//  Created by Habib Durodola on 2020-12-28.
//

import UIKit

class ViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout {

    let cellID = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .white
        setupNaviagtionTitle()
    }

    //MARK:- NAV
    func setupNaviagtionTitle(){
        navigationItem.title = "Recents"
        collectionView.alwaysBounceVertical = true
        collectionView.register(ProfileCellCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    }



}

extension ViewController {
    //MARK: - COLLECTION DELEGATE
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }

}

