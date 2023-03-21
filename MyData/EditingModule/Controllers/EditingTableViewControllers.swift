//
//  EditingTableViewControllers.swift
//  MyData
//
//  Created by Баэль Рыспеков on 21/3/23.
//


import UIKit

class EditingTableViewControllers: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        setupViews()
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    
   private func setupViews (){
        view.backgroundColor = .yellow
        title = "Редактирование"
        
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .plain, target: self, action: #selector(editingTapped))
       
    }
    
    @objc private func editingTapped () {
        print("Tapped")
    }

}



// MARK: - UITableViewDataSource


extension EditingTableViewControllers {
    
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

extension EditingTableViewControllers {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 1 ? UITableView.automaticDimension : 44
    }
}
