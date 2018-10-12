//
//  HomeViewController.m
//  iOSApp
//
//  Created by 6374 on 2/10/18.
//  Copyright © 2018 Saoud Nazir. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)findGuides:(id)sender {
    Guides *guide1 = [[Guides alloc]init];
    guide1.gCity = _locationTxt.text;
    guide1.gAvailFrom = _whenTxt.text;
    guide1.gAvailTo = _backOnTxt.text;
    if(guide1.gCity != nil && guide1.gAvailFrom != nil && guide1.gAvailTo != nil){
        [self performSegueWithIdentifier:@"GoToResults" sender:self];
    }
}

@end
