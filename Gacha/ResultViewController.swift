//
//  ResultViewController.swift
//  Gacha
//
//  Created by 藤田佳己 on 2020/05/10.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number : Int!
    
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
               if number == 9 {
                   monsterImageView.image = UIImage(named: "monster010")
                   backgroundImageView.image = UIImage(named: "bg_gold")
               }else if number > 7 {
                   monsterImageView.image = UIImage(named: "monster006")
                   backgroundImageView.image = UIImage(named: "bg_red")
               }else {
                   monsterImageView.image = UIImage(named: "monster003")
                   backgroundImageView.image = UIImage(named: "bg_blue")
               }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(value: 0)
        
        animation.toValue = NSNumber(value: 2*Double.pi)
        
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        backgroundImageView.layer.add(animation, forKey: nil)
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
