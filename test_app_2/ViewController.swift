//
//  ViewController.swift
//  test_app_2
//
//  Created by VV on 2020-12-26.
//

import UIKit //UIKit libaray

class ViewController: UIViewController {   //inherit from UIViewController
    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightinmageview: UIImageView!
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    @IBAction func dealtapped(_ sender: Any) {
        //randomized number
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        
        rightinmageview.image = UIImage(named: "card\(rightnumber)")
        
        if leftnumber > rightnumber{
            leftscore += 1
            leftscorelabel.text = String(leftscore)
        }else if leftnumber < rightnumber{
            rightscore += 1
            rightscorelabel.text = String(rightscore)
        }else {
            //tie
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


