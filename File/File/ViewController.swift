//
//  ViewController.swift
//  File
//
//  Created by Ravnish Singh
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let manager  = FileManager.default
               guard let url =  manager.urls(for: .documentDirectory, in: .userDomainMask).first
               else {
                   return
               }
               print(url.path)
               let newFolderUrl = url.appendingPathComponent("Ravnish Singh")
               let fileUrl = newFolderUrl.appendingPathComponent("file.txt")
               
               do{
                   let data = "Writing data to a text File.".data(using: .utf8)
                   manager.createFile(atPath: fileUrl.path, contents: data, attributes: [FileAttributeKey.creationDate :Date()])
               }
               
               if manager.fileExists(atPath :fileUrl.path) {
                   
                   print("File Exists")
                   
                   do {
                       
                       try manager.removeItem(at: fileUrl)
                       
                       print("File deleted")
                   }
                   catch{
                       print(error)
                       
                   }
               }
           }
    }

