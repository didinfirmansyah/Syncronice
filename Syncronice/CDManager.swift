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
    var date : String
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
    
    func saveData(date: String, score: String, confidence: String){
        
        let context = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.insertNewObject(forEntityName: "DataTable", into: context)
        entity.setValue(date, forKey: "date")
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
                    //listData.append(DataModel(date: item.value(forKey: "date") as! String, score: item.value(forKey: "score") as! String, confidence: item.value(forKey: "confidence") as! String))
                    /*
                    guard let itemDate = item.value(forKey: "date") else { return }
                    guard let itemScore = item.value(forKey: "score") else { return }
                    guard let itemConfidence = item.value(forKey: "confidence") else { return }
                    listData.append(DataModel(date: itemDate as! String, score: itemScore as! String, confidence: itemConfidence as! String))
                    */
                    if let itemDate = item.value(forKey: "date"){
                        if let itemScore = item.value(forKey: "score"){
                            if let itemConfidence = item.value(forKey: "confidence"){
                                listData.append(DataModel(date: itemDate as! String, score: itemScore as! String, confidence: itemConfidence as! String))
                            }
                        }
                    }
                }
            }else{
                listData = []
            }
        }catch{
            print(error)
        }
        
    }
        
}
