//
//  ViewController.swift
//  UI_Design2
//
//  Created by Shilpa on 22/01/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var myView: UIView!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myView.layer.cornerRadius = 30
        tableView.layer.cornerRadius = 10
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        let nib = UINib(nibName: "HeaderTableViewCell", bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: "HeaderCell")
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let hcell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderCell") as! HeaderTableViewCell
        return hcell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        return cell
        
    }
    
    
    
}

