//
//  Presenter.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

protocol Presenter {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
}

extension Presenter {
    func viewDidLoad() { }
    func viewWillAppear() { }
    func viewDidAppear() { }
    func viewWillDisappear() { }
}
