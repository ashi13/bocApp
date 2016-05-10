//
//  TripViewController.swift
//  BOCapp
//
//  Created by Andrew Murowchick on 4/26/16.
//  Copyright © 2016 Alexander Shi. All rights reserved.
//

import UIKit

class TripViewController: UIViewController { //, TripViewDataSource {
 
    
    // MARK: Properties for trip view
    @IBOutlet weak var tripPicture: UIImageView!
    @IBOutlet weak var tripName: PaddingLabel!
    @IBOutlet weak var tripLocation: PaddingLabel!
    @IBOutlet weak var tripDescription: PaddingLabel!
    @IBOutlet weak var leaderName: PaddingLabel!
    @IBOutlet weak var leaderPicture: UIImageView!
    
//    @IBOutlet weak var tripView: TripView! {
//        didSet {
//            tripView.dataSource = self
//        }
//    }
//    
//    func getTripInfo() -> Trip? {
//        return nil
//    }
//    
//    var model = Trips()

    @IBOutlet weak var tripView: TripView!  // UIScrollView 
    var trip: Trip? // Pushed over by segue when selected from TableView
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let trip = trip {
            navigationItem.title = trip.title
            tripPicture.image = trip.image
            tripName.text = trip.title
            tripDescription.text = trip.description
            tripLocation.text = trip.location
            leaderName.text = trip.leaderName
            leaderPicture.image = trip.leaderImage
            
            tripName.sizeToFit()
            tripDescription.sizeToFit()
            tripLocation.sizeToFit()
            leaderName.sizeToFit()
            
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
