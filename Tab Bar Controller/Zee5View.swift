//
//  Zee5View.swift
//  Tab Bar Controller
//
//  Created by Apple on 19/07/22.
//

import UIKit

class Zee5View: UIViewController {
    
    let webSeriesList:[String] = ["DE DHAKKA1","DE DHAKKA2","DE DHAKKA3","DE DHAKKA4","DE DHAKKA5","DE DHAKKA6","DE DHAKKA7","DE DHAKKA8"]

    @IBOutlet weak var myTableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView2.tableFooterView = UIView()
    }

}

extension Zee5View: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let swift = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        swift.textLabel?.text = webSeriesList[indexPath.row]
        return swift
    }
    
    
}
