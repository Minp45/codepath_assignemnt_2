//
//  DetailViewController.swift
//  Forth
//
//  Created by Min Pan on 3/2/23.
//

import UIKit

class DetailViewController: UIViewController {

    // Property
    var detail: Detail?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
        if let detail = detail {
            print(detail.name)
        }
        if let detail = detail {
            detailNameLabel.text = detail.name
        }
    }
    
    
    @IBOutlet weak var detailNameLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
