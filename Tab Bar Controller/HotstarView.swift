//
//  HotstarView.swift
//  Tab Bar Controller
//
//  Created by Apple on 19/07/22.
//

import UIKit

class HotstarView: UIViewController {
    let webSeriesList:[String] = ["Indian1","Indian2","Indian3","Indian4","Indian5","Indian6","Indian7","Indian8","Indian9","Indian10","Indian11","Indian12",]

    @IBOutlet weak var myTableView3: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView3.tableFooterView = UIView()
    }
}

extension HotstarView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bamen = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        bamen.textLabel?.text = webSeriesList[indexPath.row]
        return bamen
    }
    
    
}
