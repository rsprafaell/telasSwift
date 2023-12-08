//
//  TelaAzulViewController.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulViewController: UIViewController {
    
    var  onVerdeButtonTap: (() -> Void)?
    
    lazy var telaAzulView: TelaAzulView = {
        let telaAzulView = TelaAzulView()
        
        telaAzulView.onVerdeButtonTap = {
            self.onVerdeButtonTap?()
        }
       
        return telaAzulView
    }()
    
    override func loadView() {
          self.view = telaAzulView
      }
    
    
  /*  //cria uma variável que é do tipo LoginView
    var viewMain =  TelaAzulView()
    
       override func loadView(){
           self.view = viewMain
       }
   */
    
    
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Azul"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
