//
//  WellcomeViewController.swift
//  LogIn
//
//  Created by Дэлина Дворжецкая on 27.10.2021.
//

import UIKit

class WellcomeViewController: UIViewController {

    @IBOutlet var wellcomeLabel: UILabel!
    
    var user = ""
    
    private let primaryColor = UIColor(
        displayP3Red: 210/255,
        green: 109/255,
        blue: 128/255, alpha: 1)
    private let secondaryColor = UIColor(
        displayP3Red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    wellcomeLabel.text = "Wellcome, \(user)!"

    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
