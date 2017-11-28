//
//  Instaceable.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//
import UIKit

protocol Instanceable {

    static var storyboardName: String { get }
    static var viewControllerIdentifier: String { get }

    func preparePresenter()
}

extension Instanceable where Self : PresentableViewController {

    static func createInstance() throws -> Self {
        let identifier = viewControllerIdentifier
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
            throw ViewControllerTypeNotMatching()
        }
        view.preparePresenter()
        return view
    }
}
