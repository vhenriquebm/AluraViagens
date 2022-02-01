//
//  ViagensTableViewCell.swift
//  aluraViagens
//
//  Created by Vitor Henrique Barreiro Marinho on 29/01/22.
//

import UIKit

class ViagensTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var backgroundViewCell: UIView!
    
    
    
    @IBOutlet weak var viagemImage: UIImageView!
    
    
    @IBOutlet weak var tituloViagemLabel: UILabel!
    
    
    @IBOutlet weak var subtitulo: UILabel!
    
    
    
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    @IBOutlet weak var precoSemDesconto: UILabel!
    
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    
    @IBOutlet weak var statusCancelamento: UILabel!


func configuraCelula (viagem: Viagem?) {

viagemImage.image = UIImage(named: viagem?.asset ?? "")

tituloViagemLabel.text = viagem?.titulo
subtitulo.text = viagem?.subtitulo
precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
    
    
    let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0) ")
    
    
    atributoString.addAttribute(NSMutableAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
    

    precoSemDesconto.attributedText = atributoString
    
    
    if let numeroDeDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
        
    
        let diarias = numeroDeDias == 1 ? "Duarias" : "Diarias"
        
        let hospedes = numeroDeHospedes == 1 ? "Pessoas" : "Pessoas"
        
        diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes))"
        
    }
    
    
  
    
    }
    
}










