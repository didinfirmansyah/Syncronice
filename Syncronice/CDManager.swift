//
//  CDManager.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 31/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//


import UIKit
import CoreData

struct DataModel{
    var score : String
    var confidence : String
}

class CDManager : NSObject{
    
    var appDel = UIApplication.shared.delegate as! AppDelegate
    var listData : [DataModel] = []
    
    override init(){
        super.init()
        
        readData()
        
    }
    
    func saveData(score: String, confidence: String){
        
        let context = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.insertNewObject(forEntityName: "DataTable", into: context)
        entity.setValue(score, forKey: "score")
        entity.setValue(confidence, forKey: "confidence")
        do{
            try context.save()
        }catch{
            print(error)
        }
        readData()
        
    }
    
    func readData(){
        
        let context = appDel.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DataTable")
        do{
            let result = try context.fetch(request)
            if result.count > 0{
                for item in result as! [NSManagedObject]{
                    listData.append(DataModel(score: item.value(forKey: "score") as! String, confidence: item.value(forKey: "confidence") as! String))
                }
            }else{
                listData = []
            }
        }catch{
            print(error)
        }
        
    }
        
}
