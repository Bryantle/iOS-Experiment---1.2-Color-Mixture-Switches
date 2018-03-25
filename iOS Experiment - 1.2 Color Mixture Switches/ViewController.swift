//
//  ViewController.swift
//  iOS Experiment - 1.2 Color Mixture Switches
//
//  Created by mac on 3/25/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var switchCollection: [UISwitch]!
    @IBOutlet weak var box: UIView!
    
    @IBAction func redAction(_ sender: Any) {
        if switchCollection[0].isOn{
            if switchCollection[1].isOn && switchCollection[2].isOn{
                box.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)}
            else if switchCollection[1].isOn {
                box.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)}
            else if switchCollection[2].isOn {
                box.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
                }
            else {
                box.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            }
            }
        }
    
    
    @IBAction func yellowAction(_ sender: Any) {
        if switchCollection[1].isOn{
            if switchCollection[0].isOn && switchCollection[2].isOn{
                box.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)}
            else if switchCollection[0].isOn {
                box.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)}
            else if switchCollection[2].isOn {
                box.backgroundColor = #colorLiteral(red: 0.3203304424, green: 1, blue: 0.2013603992, alpha: 1)
            }
            else {
                box.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.9594129499, blue: 0.2034122372, alpha: 1)
            }
        }
    }
    
    @IBAction func blueAction(_ sender: Any) {
        if switchCollection[2].isOn{
            if switchCollection[0].isOn && switchCollection[1].isOn{
                box.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)}
            else if switchCollection[1].isOn {
                box.backgroundColor = #colorLiteral(red: 0.3203304424, green: 1, blue: 0.2013603992, alpha: 1)}
            else if switchCollection[0].isOn {
                box.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            }
            else {
                box.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            }
        }
    }
    
    
    override func viewDidLoad() {
        for colors in switchCollection {
            colors.setOn(false, animated: false)
        }
        box.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

