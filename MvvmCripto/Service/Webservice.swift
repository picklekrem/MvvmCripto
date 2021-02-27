//
//  Webservice.swift
//  MvvmCripto
//
//  Created by Ekrem Özkaraca on 10.02.2021.
//

import Foundation

class Webservice {
    //    dizi olduğu için [] aldık, opt yaptık bcs network
    
    func downloadCurrencies(url: URL, completion: @escaping ([CryptoCurrency]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                print("aloo")
                
            }else if let data = data {
                let crytoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                completion(crytoList)
//                print(crytoList)
//                print("aloooo")
                
            }
        }.resume()
        
    }
}
