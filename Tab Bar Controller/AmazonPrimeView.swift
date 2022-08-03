//
//  AmazonPrimeView.swift
//  Tab Bar Controller
//
//  Created by Apple on 19/07/22.
//

import UIKit

class AmazonPrimeView: UIViewController {
    
    let webSeriesList:[String] = ["Farzand", "Pawankhind", "fatteshikst", "sher shivraj","sher shivraj swari Agra","Har Har Mahadev", "Garud Zep"]

    @IBOutlet weak var myTableView4: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView4.tableFooterView = UIView()
    }
}


extension AmazonPrimeView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ravish = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        ravish.textLabel?.text = webSeriesList[indexPath.row]
        return ravish
    }
    
    
}
