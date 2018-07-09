//
//  ViewController.swift
//  MapCustomImage
//
//  Created by AMIT on 7/9/18.
//  Copyright © 2018 com.hgdhghdgfd. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.mapView.delegate = self
        
        let loc =  CLLocationCoordinate2D.init(latitude: 29.7666, longitude: 23.8899)
        
        let ann = MyAnnotation.init(coordinate:loc, title: "any", subtitle: "sub", pinColor: .Red)
        
        self.mapView.addAnnotation(ann)
        
        let span = MKCoordinateSpan.init(latitudeDelta: 0.3,longitudeDelta: 0.9)
        
        var region = MKCoordinateRegion.init(center: loc, span: span);
        
        mapView.setRegion(region, animated: true)
        
        
        
    }
    
    func mapView(_ mapView: MKMapView,viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if annotation is MyAnnotation == false
        {
            
            return nil
        }
        
        let senderAnnotation = annotation as! MyAnnotation
        
        let pinReusableIdentifier = senderAnnotation.pinColor.rawValue
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: pinReusableIdentifier)
        
        if annotationView == nil
        {
            annotationView = MKAnnotationView(annotation: senderAnnotation,                                                                                                reuseIdentifier: pinReusableIdentifier)
            annotationView!.canShowCallout = true
            
        }
        let pinImage = UIImage(named:"download.png")
        
        annotationView!.image = pinImage
        
        return annotationView
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

