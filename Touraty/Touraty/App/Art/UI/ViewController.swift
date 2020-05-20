//
//  ViewController.swift
//  Touraty
//
//  Created by MT5619 on 19/05/2020.
//  Copyright © 2020 MT5619. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var artCollectionView: UICollectionView!
    
    let viewModel = ArtViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupArtCollectionView()
        // Do any additional setup after loading the view.
    }

    func setupArtCollectionView(){
        artCollectionView.rx.setDelegate(self).disposed(by:disposeBag)
        self.viewModel.listArt
            .asObservable()
            .observeOn(MainScheduler.asyncInstance)
            .bind(to: self.artCollectionView.rx.items(cellIdentifier: "artCell")){
                  index,art,cell in
                  
                  if let artCell = cell as? ArtCollectionViewCell{
                    artCell.initArt(artImage: art.image, artDescription: art.description)
                  }
                  
                  }.disposed(by: disposeBag)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width  , height: self.view.frame.size.height )
    
    }
    

}

