//
//  MainListExamples.m
//  GeolocationExamples
//
//  Created by Augusto Lima on 9/4/15.
//  Copyright (c) 2015 Augusto Lima. All rights reserved.
//

#import "MainListExamples.h"
#import "UserLocation.h"
#import "ChangeMapType.h"
#import "ExampleCell.h"

@interface MainListExamples ()

@end

@implementation MainListExamples {
    NSArray *allExamples;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createAllExamples];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - TableView DataSource

//Responsável para retornar a quantidade de linhas na tabela, no caso vai ser o tamanho da minha lista
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [allExamples count];
}

//Faz a montagem de casa celula da tabela
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ExampleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exampleCell" forIndexPath:indexPath];
    [cell.lblNameExample setText:[allExamples objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[UserLocation newUserLocationInstance] animated:YES];
            break;
            
        case 1:
            [self.navigationController pushViewController:[ChangeMapType newChangeMapTypeInstance] animated:YES];
            break;
            
        default:
            break;
    }
}

#pragma mark - Utility

- (void)createAllExamples {
    allExamples = @[@"User location", @"Change map type", @"opcao3", @"opcao4", @"opcao5", @"opcao6"];
}

@end
