//
//  ViewController.swift
//  HTTP
//
//  Created by Ravnish Singh on 05/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func getButtonTapped(_ sender: Any) {
              guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else
              { return }
              
              let session = URLSession.shared.dataTask(with: url) { ( data, response, error) in
                  if let response = response {
                      print(response)
                  }
                  
                  if let data = data {
                      print(data)
                      do {
                          
                          let json = try JSONSerialization.jsonObject(with: data, options: [])
                          print(json)
                          
                      }catch {
                          
                          print(error)
                      }
                  }
              }.resume()
          }
}
