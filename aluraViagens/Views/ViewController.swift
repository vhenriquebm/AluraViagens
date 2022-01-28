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
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        view.backgroundColor = UIColor(displayP3Red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
    }
    
    @IBOutlet weak var viagensTableView: UITableView!
}



    
    extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
    
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        
        return cell
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
    
    
    
}
    


    
    
    


