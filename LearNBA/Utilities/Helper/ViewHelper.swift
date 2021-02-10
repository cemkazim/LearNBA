//
//  ViewHelper.swift
//  LearNBA
//
//  Created by Cem Kazım on 11.02.2021.
//

import UIKit

extension UIViewController {
    
    func pushTo(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func removeNavigationBar() {
        navigationItem.setHidesBackButton(true, animated: false)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .clear
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func showAlertView(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: Constants.okTitle, style: .default, handler: nil)
        let dismissButton = UIAlertAction(title: Constants.dismissTitle, style: .default, handler: nil)
        alertController.addAction(okButton)
        alertController.addAction(dismissButton)
        present(alertController, animated: true)
    }
    
    func showError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: Constants.okTitle, style: .default, handler: nil)
        alertController.addAction(okButton)
        present(alertController, animated: true)
    }
}
