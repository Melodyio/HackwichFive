//
//  ViewController.swift
//  HackwichFive
//
//  Created by Hillary Oki on 2/23/18.
//  Copyright © 2018 Melody Oki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Declare your array here

    var myFriendsArray = ["Emily","Courtney","George"]
    
    //Restaurant Image Data
    var restaurantImageData = [String]()
    
    var kapoleiRestaurantsArray = ["Kapolei Kalapawai"]
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        tableView.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
    
        return 1;
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return kapoleiRestaurantsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
    
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseldentifier")!
            let text = kapoleiRestaurantsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
            }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
        
    }
    
}
