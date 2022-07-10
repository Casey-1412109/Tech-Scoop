//
//  NetworkManager.swift
//  H4XOR
//
//  Created by Casey on 27/06/22.
//

import Foundation

class NetworkManager : ObservableObject
{
    @Published var posts = [Post]()
    func fetchData()
    {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil
                {
                    let decoder = JSONDecoder()
                    if let sdata = data
                    {
                        do
                        {
                            let result = try decoder.decode(Results.self, from: sdata)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                                
                        }
                        catch
                        {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
}
