//
//  ScreenTableView.swift
//  TableViewCode
//
//  Created by Thiago Monteiro  on 14/06/21.
//

import UIKit

class ScreenTableView: UIView, CodeView {

    lazy var tableViewCustom: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(ContactsTableViewCell.self, forCellReuseIdentifier: ContactsTableViewCell.identifier)
        table.backgroundColor = .white
        return table
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setupView()
    }
    
    
    func buildViewHierarchy() {
        self.addSubview(tableViewCustom)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            self.tableViewCustom.topAnchor.constraint(equalTo: self.topAnchor),
            self.tableViewCustom.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.tableViewCustom.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.tableViewCustom.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    func extraSetupConfiguration() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
