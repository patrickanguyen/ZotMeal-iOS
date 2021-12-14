//
//  LoadJSON.swift
//  ZotMeal 2
//
//  Created by Shengyuan Lu on 10/14/21.
//

import Foundation

class LoadJSON {
    
    func loadLocalJSON(forName name:String) -> Data? {
        
        do {
            
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileURL = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileURL)
                print("Load local JSON name:\(name) succeessfully")
                return data
            }
            
        } catch {
            print("Error when parsing local JSON: \(error)")
            
        }
        
        return nil
    }
    
    /*
    func loadRemoteJSON(forName name:String) -> Data? {
        
    }
    */
    
}
