//
//  ImageLoader.swift
//  LoadAnImageFromTheWeb
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader: ObservableObject {
    
    @Published var downloadedImage: UIImage?
    
    func fetchImage(url: String) {
        
        guard let imageURL = URL(string: url) else {
            fatalError("The URL string is invalid")
        }
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            guard let data = data, error == nil else {
                fatalError("error reading image")
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = UIImage(data: data)
            }
                
        }.resume()
    }
}
