//
//  UserLocation.m
//  GeolocationExamples
//
//  Created by Augusto Lima on 9/4/15.
//  Copyright (c) 2015 Augusto Lima. All rights reserved.
//

#import "UserLocation.h"

@interface UserLocation ()

@end

@implementation UserLocation {
    CLLocationManager *locationManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMapView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)newUserLocationInstance {
    return (UserLocation *)[[UIStoryboard storyboardWithName:@"UserLocation" bundle:nil] instantiateViewControllerWithIdentifier:@"UserLocationId"];
}

#pragma mark - Init MapView

- (void)initMapView {
    _mapView.delegate = self;
    
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = self;
    _mapView.showsUserLocation = YES;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    }
    
    [locationManager startUpdatingLocation];
}

#pragma mark - MapView Delegate

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    MKCoordinateRegion region = { {0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = userLocation.coordinate.latitude;
    region.center.longitude = userLocation.coordinate.longitude;
    
    region.span.latitudeDelta = 0.03f;
    region.span.longitudeDelta = 0.03f;
    [mapView setRegion:region animated:YES];
}

- (void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error {
    NSLog(@"Erro: %@",error);
//    em caso de erro, olhe nas funções do simulador e escolhe "debug > location" e escolhe uma localização
//    pode dar erro tambem no caso de estar sem coneção com internet
}



@end
