//
//  ViewController.swift
//  SystemView
//
//  Created by Ravnish Singh on 04/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .link
        
    }
    @IBAction func didTapButton(){
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "second") as? SecViewController else{
           print("FAILED")
            return
        }
        present(vc, animated: true)
        }
    }
