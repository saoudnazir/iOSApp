//
//  SignUpViewController.m
//  iOSApp
//
//  Created by 6374 on 1/10/18.
//  Copyright © 2018 Saoud Nazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginViewController.h"
#import "SignUpViewController.h"
@interface SignUpViewController()
@end
@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Register:(id)sender {
    NSString *url = [NSString stringWithFormat:@"https://mirzasaoud60.000webhostapp.com/insert.php?email=%@&password=%@&fullname=%@&address=%@&contact=%@&dob=%@",_email.text,_password.text,_fullName.text,_address.text,_contactNo.text,_dob.text];
    NSData *execute = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    NSError *error;
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:execute options:kNilOptions error:&error];
    if(error != nil){
        NSLog(@"Error");
    }else{
        NSString *response = [[NSString alloc]initWithString:[jsonArr valueForKey:@"response"]];
        /*NSString *error = [[NSString alloc]initWithString:[jsonArr valueForKey:@"error"]];
        
        if(error != nil){
           NSLog(@"%@",error);
        }*/
        NSLog(@"%@",response);
        if ([response isEqualToString:@"true"]) {
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Registered Successfull"
                                         message:@"You can login now."
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                        }];
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        } else {
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Wrong Info"
                                         message:@"Please sure your info is correct. OR The email is already taken."
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                        }];
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
}




@end

