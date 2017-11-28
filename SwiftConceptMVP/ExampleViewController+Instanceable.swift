//
//  ExampleViewController+Instanceable.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

import Foundation

extension ExampleViewController: Instanceable {

    static var storyboardName = Storyboard.main.rawValue
    static var viewControllerIdentifier = String(describing: ExampleViewController.self)

    func preparePresenter() {
        presenter = ExamplePresenter(view: self)
    }
}
