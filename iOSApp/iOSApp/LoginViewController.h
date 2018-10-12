//
//  LoginViewController.m
//  iOSApp
//
//  Created by 6374 on 1/10/18.
//  Copyright © 2018 Saoud Nazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Model/User.h"

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property NSString *uID;
@end
