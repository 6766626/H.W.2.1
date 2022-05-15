//
//  ViewController.swift
//  H.W.2.1
//
//  Created by Alex on 16/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    var redColor :CGFloat = 1
    var greenColor: CGFloat = 1
    var blueColor: CGFloat = 1
    
    override func viewDidLoad() {
        mainView.backgroundColor = UIColor(displayP3Red: redColor/255 , green: greenColor/255, blue: blueColor/255, alpha: 1)
        super.viewDidLoad()
        redSlider.value = 1
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .blue
        
        greenSlider.value = 1
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .blue
        
        
        blueSlider.value = 1
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func moveRedSlider(_ sender: Any) {
        redColor = CGFloat(redSlider.value)
        redValue.text = String(Int(redSlider.value))
        mainView.backgroundColor = UIColor(displayP3Red: redColor/255 , green: greenColor/255, blue: blueColor/255, alpha: 1)
    }
    @IBAction func moveGreenSlider(_ sender: Any) {
        
        greenColor = CGFloat(greenSlider.value)
        greenValue.text = String(Int(greenSlider.value))
        mainView.backgroundColor = UIColor(displayP3Red: redColor/255 , green: greenColor/255, blue: blueColor/255, alpha: 1)
    }
    @IBAction func moveBlueSlider(_ sender: Any) {
        blueColor = CGFloat(blueSlider.value)
        blueValue.text = String(Int(blueSlider.value))
        mainView.backgroundColor = UIColor(displayP3Red: redColor/255 , green: greenColor/255, blue: blueColor/255, alpha: 1)
    }
    

}

