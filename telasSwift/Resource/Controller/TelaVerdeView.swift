//
//  TelaVerdeView.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeView: UIView {
    
    var  onVermelhaButtonTap: (() -> Void)?
    var  onAzulButtonTap: (() -> Void)?
    
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para azul
            self.backgroundColor = .systemGreen
            setupVisualElements()
            
        }
    
    //cria a função com as propriadades da butao tela verde
    let telaAzulButton: UIButton = {
                let button = UIButton()
                button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
                button.setTitle("Voltar para Tela Azul", for: .normal)
                button.layer.cornerRadius = 12
                button.translatesAutoresizingMaskIntoConstraints = false
                
                return button
            }()
    
    let telaVermelhaButton: UIButton = {
                let button = UIButton()
                button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
                button.setTitle("Ir para Tela Vermelha", for: .normal)
                button.layer.cornerRadius = 12
                button.translatesAutoresizingMaskIntoConstraints = false
                
                return button
            }()
    
    
    func setupVisualElements() {
       
        self.addSubview(telaAzulButton)
        self.addSubview(telaVermelhaButton)
        
        telaVermelhaButton.addTarget(self, action: #selector(vermelhaButtonTap), for: .touchUpInside)
        telaAzulButton.addTarget(self, action: #selector(azulButtonTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            telaVermelhaButton.widthAnchor.constraint(equalToConstant: 274.99),
            telaVermelhaButton.heightAnchor.constraint(equalToConstant: 82.64),
            telaVermelhaButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            telaVermelhaButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            telaVermelhaButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            telaAzulButton.topAnchor.constraint(equalTo: telaVermelhaButton.bottomAnchor, constant: 25),
            telaAzulButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            telaAzulButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            telaAzulButton.heightAnchor.constraint(equalToConstant: 82.64),
            
            
        
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions BOTAO
        @objc private func vermelhaButtonTap() {
            onVermelhaButtonTap?()
        }
   
        @objc private func azulButtonTap() {
            onAzulButtonTap?()
        }
    
}
