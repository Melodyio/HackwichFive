//
//  detailViewController.swift
//  HackwichFive
//
//  Created by CM Student on 3/19/18.
//  Copyright © 2018 Melody Oki. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textView: UITextView!
    
    var imagePass: String?
    var descriptionPass: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray

        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
