//
//  HomeViewController.h
//  iOSApp
//
//  Created by 6374 on 2/10/18.
//  Copyright © 2018 Saoud Nazir. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "Model/Guides.h"

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *hiLabel;
@property (weak, nonatomic) IBOutlet UILabel *touristLabel;
@property (weak, nonatomic) IBOutlet UITextField *locationTxt;
@property (strong, nonatomic) IBOutlet UITextField *whenTxt;
@property (weak, nonatomic) IBOutlet UITextField *backOnTxt;
@property (weak, nonatomic) IBOutlet UIButton *goBtn;

@end
