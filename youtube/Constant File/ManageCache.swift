//
//  ManageCache.swift
//  youtube
//
//  Created by Kedar Pandya on 01/01/21.
//

import Foundation

class ManageCache {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String,_ data:Data?){
        cache[url] = data
    }
    
    static func getVideoCacghe(_ url:String) -> Data? {
        
        return cache[url]
    }
}
