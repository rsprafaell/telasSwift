//
//  TelaVermelhaCoordinator.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulButtonTap = {
            self.goToAzulButtonTap()
        }
       
        viewController.onVerdeButtonTap = {
            self.goToVerdeButtonTap()
        }
    }
    
    private func goToAzulButtonTap() {
        let coordinator = TelaAzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func goToVerdeButtonTap() {
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
