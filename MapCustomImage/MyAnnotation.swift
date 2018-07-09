//
//  MyAnnotation.swift
//  MasryTester
//
//  Created by Approcks Mac Mini on 1/17/17.
//  Copyright © 2017 Approcks. All rights reserved.
//

import UIKit
import MapKit

/* This allows us to check for equality between two items of type PinColor */
func == (left: PinColor, right: PinColor) -> Bool
{
    return left.rawValue == right.rawValue
}

/* The various pin colors that our annotation can have */
enum PinColor : String
{
    case Blue = "Blue"
    case Red = "Red"
    case Green = "Green"
    case Purple = "Purple"
    
    /* We convert our pin color to the system pin color */
    func toPinColor() -> MKPinAnnotationColor
    {
        switch self
        {
        case .Red:
            return .red
        case .Green:
            return .green
        case .Purple:
            return .purple
        default:
            return .red
        }
    }
}


/**
 
 ## MyAnnotation class ##
 
 This class is a custom model of an annotation displayed on map
 
 */

class MyAnnotation: NSObject, MKAnnotation
{
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var title: String!
    var subtitle: String!
    var pinColor: PinColor!
     var index: Int
     var type: String!
     var directOrder: Bool!
     var shown: Bool!
    
    init(coordinate: CLLocationCoordinate2D, title: String,
         subtitle: String,
         pinColor: PinColor
         )
    {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.pinColor = pinColor
        self.index = 222222222
        self.shown = false
        super.init()
    }
    
    init(coordinate: CLLocationCoordinate2D, title: String,
         subtitle: String,
         pinColor: PinColor,
         index: Int,
         shown:Bool)
    {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.pinColor = pinColor
        
        self.index =  index
        self.shown = shown
        super.init()
    }
    
    init(coordinate: CLLocationCoordinate2D, title: String,
         subtitle: String,
         pinColor: PinColor,
         index: Int
         )
    {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.pinColor = pinColor
        
        self.index =  index
       self.shown = false
        super.init()
    }
    
    
   }
