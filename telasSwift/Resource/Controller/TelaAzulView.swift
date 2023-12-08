//
//  TelaAzulView.swift
//  telasSwift
//
//  Created by IFB-BIOTIC-23 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    
    var  onVerdeButtonTap: (() -> Void)?
    
    
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para azul
            self.backgroundColor = .systemBlue
            setupVisualElements()
            
        }
    
    //cria a função com as propriadades da butao tela verde
    let telaVerdeButton: UIButton = {
                let button = UIButton()
                button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
                button.setTitle("Ir para Tela Verde", for: .normal)
                button.layer.cornerRadius = 12
                button.translatesAutoresizingMaskIntoConstraints = false
                
                return button
            }()
    
    
    func setupVisualElements() {
       
        self.addSubview(telaVerdeButton)
        
        telaVerdeButton.addTarget(self, action: #selector(verdeButtonTap), for: .touchUpInside)
       
        NSLayoutConstraint.activate([
        
            telaVerdeButton.widthAnchor.constraint(equalToConstant: 274.99),
            telaVerdeButton.heightAnchor.constraint(equalToConstant: 82.64),
            telaVerdeButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            telaVerdeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            telaVerdeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Actions BOTAO
        @objc private func verdeButtonTap() {
            onVerdeButtonTap?()
        }
        
    
}
