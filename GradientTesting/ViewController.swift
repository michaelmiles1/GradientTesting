//
//  ViewController.swift
//  GradientTesting
//
//  Created by Michael Miles on 3/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var maskedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradient()
    }
    
    private func createGradient() {
        let gradientMaskLayer = CAGradientLayer()
        gradientMaskLayer.frame = maskedView.bounds
        gradientMaskLayer.colors = [UIColor.clear.cgColor, UIColor.gray.cgColor]
        gradientMaskLayer.locations = [0, 0.15]
        maskedView.layer.mask = gradientMaskLayer
    }


}

