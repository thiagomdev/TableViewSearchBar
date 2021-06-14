//
//  ContactsTableViewCell.swift
//  TableViewCode
//
//  Created by Thiago Monteiro  on 14/06/21.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    static let identifier = "ContactsTableViewCell"
    
    lazy var myContacts: ScreenTableView = {
        let contacts = ScreenTableView()
        contacts.translatesAutoresizingMaskIntoConstraints = false
        contacts.backgroundColor = .white
        return contacts
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(myContacts)
        self.constraintsCell()
    }
    
    
    func constraintsCell() {
        self.myContacts.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.myContacts.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.myContacts.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.myContacts.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
