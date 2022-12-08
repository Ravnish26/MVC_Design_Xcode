//
//  ViewController.swift
//  Json
//
//  Created by Ravnish Singh
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "Hello"
        let dictionary = ["key1":"val1", "key2":"val2", "key3":"val3"]
        var products = [Product]()
        struct Root : Decodable {
            private enum CodingKeys : String, CodingKey { case hello = "Hello" }
            let hello : [Product]
        }
        struct Product: Codable {
            var title: String
            var reference: String
        }
        func createProducts(title: String, refer: String) {
            products.append(Product(title: title, reference: refer))
        }

        for element in dictionary {
            createProducts(title: element.key, refer: element.value)
        }
        let general = [str: products]
        let encodedData = try? JSONEncoder().encode(general)
        let json = String(data: encodedData!, encoding: .utf8)!
        print(json)
        do {
           let decodedData = try JSONDecoder().decode(Root.self, from: Data(json.utf8))
           print(decodedData.hello)
        }catch{
            print("error")
        }
    }
}
