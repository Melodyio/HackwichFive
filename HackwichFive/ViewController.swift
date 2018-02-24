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
    
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        self.tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
    
        return 1;
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return myFriendsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
    
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseldentifier")!
            let text = myFriendsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
            }
}
