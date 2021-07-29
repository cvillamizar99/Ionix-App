//
//  HomePresenter.swift
//  Ionix App
//
//  Created by Carlos Villamizar on 27/7/21.
//

import UIKit

protocol HomePresentationLogic {
    func presentPost(response: Home.Post.Response)
    func presentSearchPost(response: Home.SearchPost.Response)
    func presentError(response: Home.Error.Response)
}

class HomePresenter: HomePresentationLogic {
    
    weak var viewController: HomeDisplayLogic?
    
    // MARK: - Present SignUp
    func presentPost(response: Home.Post.Response) {
        let viewModel = Home.Post.ViewModel(data: response.data)
        viewController?.displayHome(viewModel: viewModel, on: .main)
    }
    
    // MARK: - Present SearchPost
    func presentSearchPost(response: Home.SearchPost.Response) {
        let viewModel = Home.SearchPost.ViewModel(data: response.data)
        viewController?.displaySearchPost(viewModel: viewModel, on: .main)
    }
    
    // MARK: - Present Error
    func presentError(response: Home.Error.Response) {
        let viewModel = Home.Error.ViewModel(error: response.error)
        viewController?.displayError(viewModel: viewModel, on: .main)
    }
}
