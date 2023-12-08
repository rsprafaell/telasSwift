//
//  TelaVermelhaView.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaView: UIView {
    
    var  onAzulButtonTap: (() -> Void)?
    var  onVerdeButtonTap: (() -> Void)?
    
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para vermelha
            self.backgroundColor = .systemRed
            setupVisualElements()
            
        }
    
    //cria a função com as propriadades da botao tela azul
    let telaAzulButton: UIButton = {
                let button = UIButton()
                button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
                button.setTitle("Ir para Tela Azul", for: .normal)
                button.layer.cornerRadius = 12
                button.translatesAutoresizingMaskIntoConstraints = false
                
                return button
            }()
    
    let telaVerdeButton: UIButton = {
                let button = UIButton()
                button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
                button.setTitle("Voltar para Tela Verde", for: .normal)
                button.layer.cornerRadius = 12
                button.translatesAutoresizingMaskIntoConstraints = false
                
                return button
            }()
    
    
    func setupVisualElements() {
       
        self.addSubview(telaAzulButton)
        self.addSubview(telaVerdeButton)
        
        telaAzulButton.addTarget(self, action: #selector(azulButtonTap), for: .touchUpInside)
        telaVerdeButton.addTarget(self, action: #selector(verdeButtonTap), for: .touchUpInside)
       
        NSLayoutConstraint.activate([
        
            telaAzulButton.widthAnchor.constraint(equalToConstant: 274.99),
            telaAzulButton.heightAnchor.constraint(equalToConstant: 82.64),
            telaAzulButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            telaAzulButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            telaAzulButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            telaVerdeButton.topAnchor.constraint(equalTo: telaAzulButton.bottomAnchor, constant: 25),
            telaVerdeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            telaVerdeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            telaVerdeButton.heightAnchor.constraint(equalToConstant: 82.64),
            
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions BOTAO
        @objc private func azulButtonTap() {
            onAzulButtonTap?()
        }
   
        @objc private func verdeButtonTap() {
            onVerdeButtonTap?()
        }
    
}
