import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
                            
    @IBOutlet var theMap: MKMapView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the longitude and latitude (Piazza Navona, Roma, Italy)
        var longitude:CLLocationDegrees = 41.8991623
        var latitude:CLLocationDegrees = 12.47307180000007
        
        // Latitude delta: The map will look more zoom-in
        var latDelta:CLLocationDegrees = 0.1
        // Longitude delta
        var longDelta:CLLocationDegrees = 0.1
        
        // It defines the latitude and longitude directions to show on a map.
        var spanCoordinate: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        // Set the location
        var myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        // Create a region: it defines which portion of the map to display
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, spanCoordinate)
        
        // Set the region in the mapview
        self.theMap.setRegion(theRegion, animated: true)
        
        // Add an annotation on the center of the map (PIN)
        var myLocationAnnotation = MKPointAnnotation()
        // Coordinate of the pin
        myLocationAnnotation.coordinate = myLocation
        // Title of the pin
        myLocationAnnotation.title = "Piazza Navona"
        // Subtitle of the pin
        myLocationAnnotation.subtitle = "Roma, Italy"
        
        // Add the annotation to the mapview
        self.theMap.addAnnotation(myLocationAnnotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

