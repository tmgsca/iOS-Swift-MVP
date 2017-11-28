//
//  ExamplePresenter.swift
//  SwiftConceptMVP
//
//  Created by Thiago Magalhães on 27/11/2017.
//  Copyright © 2017 Thiago Magalhães. All rights reserved.
//

struct ExamplePresenter: ExamplePresenterContract {

    let view: ExampleViewContract

    func didTouchShowExample() {
        view.showExample()
    }
}
