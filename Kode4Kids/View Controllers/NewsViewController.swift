//
//  NewsViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI



class NewsViewController: UIViewController {
    
    @IBAction func backTapped(_ sender: Any) {
    
    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                   
                   self.view.window?.rootViewController = homeViewController
                   self.view.window?.makeKeyAndVisible()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
           struct NewsViewController: View {
                
                @ObservedObject var list = getData()
                
                var body: some View{
                    
                    NavigationView{
                        
                        List(list.datas){i in
                            
                            HStack(spacing: 15){
                                
                                VStack(alignment: .leading, spacing: 10){
                                    Text(i.title).fontWeight(.heavy)
                                    Text(i.desc)
                                }
                                
                            WebImage(url: URL(string: i.image)!, options: .highPriority, context: nil)
                                
                            }.padding(.vertical, 15)
                    }
                }
            }
        }
            
            
                

            //NEWS PAGE API
            
            struct dataType : Identifiable {
                
                var id : String
                var title : String
                var desc : String
                var url : String
                var image : String
            }
            
            class getData : ObservableObject{
                @Published var datas = [dataType]()
                
                init() {
                    
                    let source = "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5ba06ee74ea14df482f5e1e42cb4f9bc"
                    
                    let url = URL(string: source)!
                    
                    let session = URLSession(configuration: .default)
                    
                    session.dataTask(with: url) { (data, _, err) in
                        
                        if err != nil{
                            print((err?.localizedDescription)!)
                            return
                        }
                        
                        let json = try! JSON(data: data!)
                        
                        for i in json["articles"]{
                            
                            let title = i.1["title"].stringValue
                            let description = i.1["description"].stringValue
                            let url = i.1["url"].stringValue
                            let image = i.1["image"].stringValue
                            let id = i.1["publishedAt"].stringValue
                            
                            self.datas.append(dataType(id: id, title: title, desc: description, url: url, image: image))
                        }
                        
                    }
                }
            }
    }
    
    struct NewsViewController: View {
        
        @ObservedObject var list = getData()
        
        var body: some View{
            
            NavigationView{
                
                List(list.datas){i in
                    
                    HStack(spacing: 15){
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text(i.title).fontWeight(.heavy)
                            Text(i.desc)
                        }
                        
                    WebImage(url: URL(string: i.image)!, options: .highPriority, context: nil)
                        
                    }.padding(.vertical, 15)
                }.navigationBarTitle("Headlines")
        }
    }
}
    

    //NEWS PAGE API
    
    struct dataType : Identifiable {
        
        var id : String
        var title : String
        var desc : String
        var url : String
        var image : String
    }
    
    class getData : ObservableObject{
        @Published var datas = [dataType]()
        
        init() {
            
            let source = "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5ba06ee74ea14df482f5e1e42cb4f9bc"
            
            let url = URL(string: source)!
            
            let session = URLSession(configuration: .default)
            
            session.dataTask(with: url) { (data, _, err) in
                
                if err != nil{
                    print((err?.localizedDescription)!)
                    return
                }
                
                let json = try! JSON(data: data!)
                
                for i in json["articles"]{
                    
                    let title = i.1["title"].stringValue
                    let description = i.1["description"].stringValue
                    let url = i.1["url"].stringValue
                    let image = i.1["image"].stringValue
                    let id = i.1["publishedAt"].stringValue
                    
                    DispatchQueue.main.async {
                        self.datas.append(dataType(id: id, title: title, desc: description, url: url, image:  image))
                    }

                }
            }.resume()
        }
    }
}


