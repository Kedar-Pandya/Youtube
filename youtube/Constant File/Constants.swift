//
//  Constants.swift
//  youtube
//
//  Created by Kedar Pandya on 25/12/20.
//

import Foundation

struct Constants{
    
    static var API_KEY = "AIzaSyDIJj23c6iIx_TFj4x5jKKVyzyc1tgTZtw"
    static var PLAYLIST_ID = "UUsTcErHg8oDvUnTzoqsYeNw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    static var VIDEOCELL_ID = "VideoCell"
}

