//
//  NetworkDelegate.swift
//  Gallery
//
//  Created by Sergey on 15/03/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import Foundation

protocol NetworkManagerDelegate{
    func successRequest(result: [PhotoItem])
    
    func errorRequest(errorMessage: String)
}
