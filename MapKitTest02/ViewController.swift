//
//  ViewController.swift
//  MapKitTest02
//
//  Created by D7703_15 on 2019. 9. 16..
//  Copyright © 2019년 bohyun. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MapType 설정 (standard, hybrid, satellite)
        mapView.mapType = MKMapType.standard
        //mapView.mapType = MKMapType.hybrid
        //mapView.mapType = MKMapType.satellite
        
        // 위도, 경도 설정 (DIT 35.165964, 129.072543)
        let location = CLLocationCoordinate2D(latitude: 35.165964, longitude: 129.072543)
        
        // 반경 설정(숫자가 작을수록 세부적으로)
        //let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        
        // region 설정
        //let region = MKCoordinateRegion(center: location, span: span)
        
        // span과 region 같이 지정
        //let region = MKCoordinateRegion(center: location, latitudinalMeters: 300, longitudinalMeters: 300)
        
        // mapView 에 add
        //mapView.setRegion(region, animated: true)
        
        
        // pin꼽기
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "동의과학대학교"
        annotation.subtitle = "We Are DIT"
        //mapView.addAnnotation(annotation)
        
        // 시민공원 pin꼽기 35.1681824, 129.0556455
        let pin2 = MKPointAnnotation()
        pin2.coordinate.latitude = 35.1681824
        pin2.coordinate.longitude = 129.0556455
        pin2.title = "부산 시민공원"
        pin2.subtitle = "부산의 랜크마크"
        //mapView.addAnnotation(pin2)
        
        // 광안대교 pin꼽기 35.147919, 129.130123
        let pin3 = MKPointAnnotation()
        pin3.coordinate.latitude = 35.147919
        pin3.coordinate.longitude = 129.130123
        pin3.title = "광안대교"
        pin3.subtitle = "부산의 랜드마크"
        //mapView.addAnnotation(pin3)
        
        // 태종대 pin꼽기 35.0517554, 129.0856113
        let pin4 = MKPointAnnotation()
        pin4.coordinate.latitude = 35.0517554
        pin4.coordinate.longitude = 129.0856113
        pin4.title = "태종대"
        pin4.subtitle = "해변 전망대가 있는 고지대 공원"
        //mapView.addAnnotation(pin4)
        
        // mapView의 모든 pin들을 나타냄
        // showAnnotations : 반경 지정 없이 모든 pin을 지도에 나타나게 함
        mapView.showAnnotations([annotation, pin2, pin3, pin4], animated: true)
    }
    
    // MapType 버튼 설정 (standard, hybrid, satellite)
    @IBAction func standardTypeButton(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func hybridTypeButton(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
    
    @IBAction func satelliteTypeButton(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
}

