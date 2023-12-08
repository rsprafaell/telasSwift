//
//  TelaVerdeViewController.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController{
    
    var  onVermelhaButtonTap: (() -> Void)?
    var  onAzulButtonTap: (() -> Void)?
    
    lazy var telaVerdeView: TelaVerdeView = {
        let telaVerdeView = TelaVerdeView()
        
        telaVerdeView.onVermelhaButtonTap = {
            self.onVermelhaButtonTap?()
        }
        
        telaVerdeView.onAzulButtonTap = {
            self.onAzulButtonTap?()
        }
        
        return telaVerdeView
    }()
    
    override func loadView() {
          self.view = telaVerdeView
      }
    
    
    
   /*
    var viewMain = TelaVerdeView()
    
    override func loadView() {
      
        self.view = viewMain
    }
    */
    
    // é executada quando est[a carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Verde"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
