//
//  SonyLivView.swift
//  Tab Bar Controller
//
//  Created by Apple on 19/07/22.
//

import UIKit

class SonyLivView: UIViewController {
    
    let webSeriesList:[String] = ["KGF1", "KGF2","KGF13","KGF4","KGF5","KGF6","KGF7"]

    @IBOutlet weak var myTableView1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView1.tableFooterView = UIView()
    }
}

extension SonyLivView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sainath = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        sainath.textLabel?.text = webSeriesList[indexPath.row]
        return sainath
        
    }
    
    
    
}
