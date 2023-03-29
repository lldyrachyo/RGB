//
//  ViewController.swift
//  rgbUpdated
//
//  Created by Mark Papush on 3/29/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var changingColorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changingColorView.layer.cornerRadius = 20
        
        changingColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    

    
    @IBAction func sliderAction (_ sender: UISlider) {
        switch sender {
        case redSlider:
            setViewColor()
            redValueLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            setViewColor()
            greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            setViewColor()
            blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        }
    }
    
    private func setViewColor() {
        changingColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

}

