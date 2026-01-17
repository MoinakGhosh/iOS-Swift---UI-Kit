//
//  ColorsDetailsVC.swift
//  RandomColors
//
//  Created by Moinak G  on 08/01/26.
//

import UIKit

class ColorsDetailsVC: UIViewController {
    
    var color : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
//        view.backgroundColor = color ?? UIColor.blue

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
