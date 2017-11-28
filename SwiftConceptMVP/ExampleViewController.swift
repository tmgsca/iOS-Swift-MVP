//
//  ExampleViewController.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

import UIKit

final class ExampleViewController: PresentableViewController, ExampleViewContract {

    var presenter: ExamplePresenterContract! {
        didSet { _presenter = presenter }
    }

    @IBAction func didTouchShowExample() {
        presenter.didTouchShowExample()
    }
    
    func showExample() {
        let alert = UIAlertController(title: "Example!", message: "Free example!", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}
