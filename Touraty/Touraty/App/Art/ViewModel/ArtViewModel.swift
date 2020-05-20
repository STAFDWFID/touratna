//
//  ArtViewModel.swift
//  Touraty
//
//  Created by MT5619 on 19/05/2020.
//  Copyright © 2020 MT5619. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

final class ArtViewModel{
    
    let listArt = BehaviorRelay<[Art]>(value:[])
    
    init() {
        
        var arrayArt = [Art]()
        
        let art = Art(image: UIImage(named: "unnamed")!, description: "Meknes madina 3ati9a")
        let art1 = Art(image: UIImage(named: "unnamed")!, description: "Meknes madina 3ati9a")
        let art2 = Art(image: UIImage(named: "fes-city-tours")!, description: "fes ya fes")
        let art3 = Art(image: UIImage(named: "260px-Tour_de_Hassan")!, description: "260px-Tour_de_Hassan")
        let art4 = Art(image: UIImage(named: "260px-Tour_de_Hassan")!, description: "260px-Tour_de_Hassan")
        
        arrayArt = [art,art1,art2,art3,art4]
        listArt.accept(arrayArt)
        
        
    }


}
