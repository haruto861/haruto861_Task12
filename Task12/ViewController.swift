//
//  ViewController.swift
//  Task12
//
//  Created by 松島悠人 on 2021/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var notIncludeTaxTextField: UITextField!
    @IBOutlet private weak var addTaxTextField: UITextField!
    @IBOutlet private weak var reusultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let taxRate = UserDefaults.standard.double(forKey: "TaxRate")
        addTaxTextField.text = "\(taxRate)"
    }

    @IBAction private func didTapCaluculateBUtton(_ sender: Any) {
        let notIncludeTaxPrice = Double(notIncludeTaxTextField.text ?? "") ?? 0
        let addTaxRate = Double(addTaxTextField.text ??  "") ?? 0
        UserDefaults.standard.set(addTaxRate, forKey: "TaxRate")
        let reusultPrice = notIncludeTaxPrice * addTaxRate
        reusultLabel.text = "\(reusultPrice)"
    }

}

