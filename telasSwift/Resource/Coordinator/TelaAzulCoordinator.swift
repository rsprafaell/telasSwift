//
//  TeleAzulCoordinator.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit
class TelaAzulCoordinator: Coordinator {
    

    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = TelaAzulViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
          
          viewController.onVerdeButtonTap = {
              self.goToVerdeButtonTap()
          }

    }
    
    private func goToVerdeButtonTap() {
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
                coordinator.start()
    }
    
}
