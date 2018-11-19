//
//  BekasiMapViewController.swift
//  Wisata
//
//  Created by MacBook  on 10/31/18.
//  Copyright © 2018 MacBook . All rights reserved.
//

import UIKit
import MapKit

class BekasiMapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var BekasiMap: MKMapView!
    //variable
    
    var gps = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        
        gps.delegate = self
        gps.requestLocation()
        gps.requestAlwaysAuthorization()
        
        super.viewDidLoad()
        //Kordinat
        let coordinate =
            CLLocationCoordinate2D(latitude: -6.2527817, longitude: 106.9880672)
        
        //Jarak
        let span = MKCoordinateSpan (latitudeDelta: 0.02, longitudeDelta: 0.02)
        
        BekasiMap.region = MKCoordinateRegion(center: coordinate, span: span)
        
        //Menambahkan Pin
        
        let pin = MKPointAnnotation()
        
        //potiton pin
        
        pin.coordinate = coordinate
        
        //judul
        
        pin.title = "Dunia Salju"
        BekasiMap.addAnnotation(pin)
        
        //seting map
        BekasiMap.isZoomEnabled = true
        
        //jenis map
        BekasiMap.mapType = MKMapType.standard
        
        
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
        
        pin.title = "Dunia Salju"
        BekasiMap.addAnnotation(pin)
        BekasiMap.centerCoordinate = locationme!
    }
    
    
    
}

