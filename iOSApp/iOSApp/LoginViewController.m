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
#import "LoginViewController.h"
@interface LoginViewController()
@end
@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginAttempt:(id)sender {
    NSString *url = [NSString stringWithFormat:@"https://mirzasaoud60.000webhostapp.com/login.php?email=%@&password=%@",_email.text,_password.text];
    NSData *execute = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    
    //NSString *response = [[NSString alloc] initWithData:execute encoding:NSUTF8StringEncoding];
    //NSLog(@"%@",response);
    
    NSError *error;
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:execute options:kNilOptions error:&error];
    if(error != nil){
        NSLog(@"Error");
    }else{
        User *userid = [[User alloc]init];
        userid.uEmail =[jsonArr valueForKey:@"u_email"];
        //NSLog(@"%@",userid.uEmail);
        [self performSegueWithIdentifier:@"GoToHome" sender:self];
    }
}


@end
