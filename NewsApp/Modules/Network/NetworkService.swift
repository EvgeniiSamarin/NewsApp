//
//  NetworkService.swift
//  NewsApp
//
//  Created by Евгений Самарин on 22.02.2021.
//

import Foundation
//MARK:- пересмотреть defer{}
class NetworkService {
    //MARK:- создать свою структуру для данных
    func request<T: Decodable>(url: String,  completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data: Data?, response:URLResponse?, error: Error?) in
            if let error = error {
                return
            }
            
            guard let data = data else {
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let decodedObject = try decoder.decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch {
                
            }
            
            
        }.resume()
        
        
    }
}
