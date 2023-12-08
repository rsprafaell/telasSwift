//
//  TelaVermelhaViewController.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: UIViewController{
    
    var  onAzulButtonTap: (() -> Void)?
    var  onVerdeButtonTap: (() -> Void)?
    
    lazy var telaVermelhaView: TelaVermelhaView = {
        let telaVermelhaView = TelaVermelhaView()
        
        telaVermelhaView.onAzulButtonTap = {
            self.onAzulButtonTap?()
        }
        
        telaVermelhaView.onVerdeButtonTap = {
            self.onVerdeButtonTap?()
        }
        
        return telaVermelhaView
    }()
    
    override func loadView() {
          self.view = telaVermelhaView
      }
    
    /*
    var viewMain = TelaVermelhaView()
    
    override func loadView() {
      
        
        self.view = viewMain
    }
    */
    
    // é executada quando est[a carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
       // self.numberOfLines = 2
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
