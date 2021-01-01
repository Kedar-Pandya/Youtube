//
//  VideoTableViewCell.swift
//  youtube
//
//  Created by Kedar Pandya on 01/01/21.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var date: UILabel!
    
    var video: Video?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ v:Video){
        
        self.video = v
        
        guard self.video != nil else {
            return
        }
        
        self.title.text = video?.title
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"

        self.date.text = df.string(from: video!.published)
        
        guard self.video!.thumbnail != " " else {
            return
        }
        
        if let cacheData = ManageCache.getVideoCacghe(self.video!.thumbnail){
            self.ImageView.image = UIImage(data: cacheData)
            return
        }
        
        let url = URL(string: self.video!.thumbnail)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil{
                
                ManageCache.setVideoCache(url!.absoluteString, data )
                
                if url!.absoluteString != self.video?.thumbnail {
                    return
                }
                
                let img = UIImage(data: data!)
                
                DispatchQueue.main.async {

                    self.ImageView.image = img
                }
            }
        }
        dataTask.resume()
        
    }

}
