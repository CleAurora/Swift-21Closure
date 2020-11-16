//
//  ViewController.swift
//  Closure ClosureTraining
//
//  Created by Cleís Aurora Pereira on 03/11/20.
//

import UIKit

class ViewController: UIViewController {
    var arrayList = [String]()

    func susanCompraFarinha(marca: String, ligacao: (_ marcaSugerida: String) -> Bool){
        // Chegar mercado
        // Esqueceu a marca

        print("Marca DonaBenta, mão respondeu que \(ligacao("Dona Benta"))")

        print("Marca Girassol, mão respondeu que \(ligacao("Girassol"))")

        // Susan lembrou
        print("Marca \(marca), mão respondeu que \(ligacao(marca))")

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        susanCompraFarinha(marca: "Nordeste") {(marcaaSugerida) -> Bool in
            if marcaaSugerida == "Nordeste" {
                return true
            }
            return false
        }
    }


}

