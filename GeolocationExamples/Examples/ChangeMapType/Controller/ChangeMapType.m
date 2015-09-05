//
//  ChangeMapType.m
//  GeolocationExamples
//
//  Created by Augusto Lima on 9/5/15.
//  Copyright (c) 2015 Augusto Lima. All rights reserved.
//

#import "ChangeMapType.h"

@interface ChangeMapType ()

@end

@implementation ChangeMapType

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)newChangeMapTypeInstance {
    return (ChangeMapType *)[[UIStoryboard storyboardWithName:@"ChangeMapType" bundle:nil] instantiateViewControllerWithIdentifier:@"ChangeMapTypeId"];
}

- (IBAction)scChangeMapType:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            _mapView.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            _mapView.mapType = MKMapTypeSatellite;
            break;
            
        case 2:
            _mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}
@end
