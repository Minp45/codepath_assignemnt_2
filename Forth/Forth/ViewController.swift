//
//  ViewController.swift
//  Forth
//
//  Created by Min Pan on 3/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Create individual Dinosaurs using Dinosaur model
    let secondP = Detail(name: "I go to CUNY Hunter")
    let thirdP = Detail(name: "I join CSSA")
    let fourthP = Detail(name: "I like to run")

    
    var details: [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Store Dinosaur models
        details = [secondP, thirdP, fourthP]
    }
    
    @IBAction func didTapPic(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 1 {
                detailViewController.detail = details[0]
            } else if tappedView.tag == 2 {
                detailViewController.detail = details[1]
            } else if tappedView.tag == 3 {
                detailViewController.detail = details[2]
            }  else {
                print("No thing tapped")
            }
        }
    }
    

}

