//
//  MainViewController.swift
//  MyData
//
//  Created by Баэль Рыспеков on 21/3/23.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        setupViews()
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    
   private func setupViews (){
        view.backgroundColor = .blue
        title = "Просмотр"
        
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Редактировать", style: .plain, target: self, action: #selector(editingTapped))
       
    }
    
    @objc private func editingTapped () {
        
        let vc = EditingTableViewControllers()
        navigationController?.pushViewController(vc, animated: true)
        navigationItem.backButtonTitle = "Назад"
        
    }

}



// MARK: - UITableViewDataSource


extension MainTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Resources.NameFields.allCases.count
    }
    
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      guard  let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainTableViewCell
        else{
          return UITableViewCell()
      }
        
        let nameField = Resources.NameFields.allCases[indexPath.row].rawValue
        cell.configure(name: nameField)
        return cell
    }
    
    
}

// MARK: - UITableViewDelegate

extension MainTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 1 ? UITableView.automaticDimension : 44
    }
}
