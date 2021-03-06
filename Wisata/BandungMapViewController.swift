//
//  BandungMapViewController.swift
//  Wisata
//
//  Created by MacBook  on 10/31/18.
//  Copyright © 2018 MacBook . All rights reserved.
//

import UIKit
import MapKit

class BandungMapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapKit: MKMapView!
    
    //variable
    
    var gps = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        
        gps.delegate = self
        gps.requestLocation()
        gps.requestAlwaysAuthorization()
        
        super.viewDidLoad()
        //Kordinat
        let coordinate =
            CLLocationCoordinate2D(latitude: -6.7622636, longitude: 107.5940707)
        
        //Jarak
        let span = MKCoordinateSpan (latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        mapKit.region = MKCoordinateRegion(center: coordinate, span: span)
        
        //Menambahkan Pin
        
        let pin = MKPointAnnotation()
        
        //potiton pin
        
        pin.coordinate = coordinate
        
        //judul
        
        pin.title = "Tangkuban Perahu"
        mapKit.addAnnotation(pin)
        
        //seting map
        mapKit.isZoomEnabled = true
        
        //jenis map
        mapKit.mapType = MKMapType.standard
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func locationManager(_ manager:
        CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locationme = locations.last?.coordinate
        
        let pin  = MKPointAnnotation()
        
        pin.title = "Tangkuban Perahu"
        mapKit.addAnnotation(pin)
        mapKit.centerCoordinate = locationme!
    }
    
    
    
}
