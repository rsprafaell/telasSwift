//
//  TelaVerdeCoordinator.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onVermelhaButtonTap = {
            self.goToVermelhoButtonTap()
        }
       
        viewController.onAzulButtonTap = {
            self.goToAzulButtonTap()
        }
    }
    
    private func goToVermelhoButtonTap() {
        let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func goToAzulButtonTap() {
        let coordinator = TelaAzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
