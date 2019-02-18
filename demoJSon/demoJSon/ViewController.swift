//
//  ViewController.swift
//  demoJSon
//
//  Created by ZOHAIB  on 15/02/2019.
//  Copyright © 2019 ZOHAIB . All rights reserved.
//

import UIKit
struct jsonStruct:Decodable {
    let name:String
    let capital:String
    let region:String
    let subregion:String
    let alpha2code:String
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    

    @IBOutlet weak var tableview: UITableView!
    
    var arrdata = [jsonStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getdata()
    }
    func getdata(){
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
                if error == nil{
                    self.arrdata = try JSONDecoder().decode([jsonStruct].self, from: data!)
                    for mainarr in self.arrdata{
                        print(mainarr.name,";", mainarr.capital)
                        self.tableview.reloadData()
                    }
                
                }
                
            }catch{
                print("error in get JSON")
           
            }
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = "Name: \(arrdata[indexPath.row].name)"
        cell.lblcapital.text = "Capital: \(arrdata[indexPath.row].capital)"
        return cell
    }
  /*  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data:dataViewController = self.storyboard?.instantiateViewController(withIdentifier: "data") as! dataViewController
        
        self.navigationController?.pushViewController(data, animated: true)
        
    }
    */


}

