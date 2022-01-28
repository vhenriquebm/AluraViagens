//
//  HomeTableViewHeader.swift
//  aluraViagens
//
//  Created by Vitor Henrique Barreiro Marinho on 27/01/22.
//

import UIKit

class HomeTableViewHeader: UIView {

    
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    
    @IBOutlet weak var headerView: UIView!
    
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    
    func configuraView () {
        
        headerView.backgroundColor = UIColor(displayP3Red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
        
        
        
    }
    
    
    
    
    
    
    
}
