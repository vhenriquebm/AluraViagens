//
//  ViewController.swift
//  aluraViagens
//
//  Created by Vitor Henrique Barreiro Marinho on 27/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(displayP3Red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
                                    
        configuraTableView()
    }
        
        func configuraTableView () {
            viagensTableView.dataSource = self
            viagensTableView.delegate = self
            viagensTableView.register(UINib(nibName: "ViagensTableViewCell", bundle: nil), forCellReuseIdentifier: "viagemTableViewCell")
        }
        
        
    
    @IBOutlet weak var viagensTableView: UITableView!
}



    
    extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return sessaoDeViagens?[section].numeroDeLinhas ?? 0
    }
        
        
        

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let celulaViagem =  tableView.dequeueReusableCell(withIdentifier: "viagemTableViewCell") as?
                ViagensTableViewCell else {
           fatalError("Erro ao criar a celula")
        }
        
        
        let viewModel = sessaoDeViagens?[indexPath.section]
        
        switch viewModel?.tipo {
        case .destaques:
            celulaViagem.configuraCelula(viagem: viewModel?.viagens[indexPath.row])

            return celulaViagem
        default:
            
            
            
                    
        
        return UITableViewCell()
        
    }
    
    }

    }



extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as? HomeTableViewHeader
        headerView?.configuraView()
        return headerView
        
    }
    

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
}
    


    
    
    


