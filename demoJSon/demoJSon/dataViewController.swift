//
//  dataViewController.swift
//  demoJSon
//
//  Created by ZOHAIB  on 18/02/2019.
//  Copyright © 2019 ZOHAIB . All rights reserved.
//

import UIKit

class dataViewController: UIViewController {

    @IBOutlet weak var alpha1: UILabel!
    @IBOutlet weak var alpha2: UILabel!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var subregion: UILabel!
    
    var strregion = ""
    var strsubregion = ""
    var stralpha1 = ""
    var stralpha2 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alpha1.text = stralpha1
        alpha2.text = stralpha2
        region.text = strregion
        subregion.text = strsubregion
        
        
        // Do any additional setup after loading the view.
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
