//
//  PresentableViewController.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

import UIKit

class PresentableViewController: UIViewController {

    internal var _presenter: Presenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        _presenter.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _presenter.viewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        _presenter.viewDidAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        _presenter.viewWillDisappear()
    }
}
