//
//  MapViewController.swift
//  MukMap (iOS)
//
//  Created by Klown on 2021/09/05.
//

import Foundation
import UIKit
import NMapsMap
import FlexLayout
import PinLayout

class MapView: UIView {
    fileprivate let rootFlexContainer = UIView()

    let naverMapView: NMFNaverMapView = {
        let view = NMFNaverMapView()
        return view
    }()
    
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.setCleanSearchBar()
        return bar
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        
        rootFlexContainer.flex.define { (flex) in
            flex.addItem(searchBar).margin(20,15,15,15).height(37)
            flex.addItem(naverMapView).margin(0).grow(1)
        }
        
        addSubview(rootFlexContainer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rootFlexContainer.pin.all(pin.safeArea)
        rootFlexContainer.flex.layout()
    }
    
    func configure() {
        searchBar.placeholder = "맛집을 찾아볼까?"
    }
}

class MapViewController: UIViewController {
    
    var mapView: MapView {
        return self.view as! MapView
    }
    
    override func loadView() {
        view = MapView()
        mapView.configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.setCleanNavigationBar()
        loadView()

        let marker = NMFMarker()
        marker.position = NMGLatLng(lat: 37.359775085276, lng: 127.11468651854)
        marker.iconImage = NMFOverlayImage(name: "pin")
        marker.mapView = mapView.naverMapView.mapView
        marker.width = 32
        marker.height = 40
        
        let marker2 = NMFMarker()
        marker2.position = NMGLatLng(lat: 37.37029392345653, lng: 127.10466920412499)
        marker2.iconImage = NMFOverlayImage(name: "pin")
        marker2.mapView = mapView.naverMapView.mapView
        marker2.width = 32
        marker2.height = 40
        
        
    }
    
}
