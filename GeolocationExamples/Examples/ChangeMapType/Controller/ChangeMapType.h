//
//  ChangeMapType.h
//  GeolocationExamples
//
//  Created by Augusto Lima on 9/5/15.
//  Copyright (c) 2015 Augusto Lima. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ChangeMapType : UIViewController <MKMapViewDelegate>

+ (instancetype)newChangeMapTypeInstance;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)scChangeMapType:(UISegmentedControl *)sender;

@end
