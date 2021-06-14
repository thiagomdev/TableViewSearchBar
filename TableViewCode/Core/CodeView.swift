//
//  CodeView.swift
//  TableViewCode
//
//  Created by Thiago Monteiro  on 14/06/21.
//

import Foundation

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func extraSetupConfiguration()
    func setupView()
    
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        extraSetupConfiguration()
    }
}
