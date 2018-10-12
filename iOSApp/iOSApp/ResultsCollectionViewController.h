//
//  ResultsCollectionViewController.h
//  iOSApp
//
//  Created by 6374 on 2/10/18.
//  Copyright © 2018 Saoud Nazir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultsCollectionViewCell.h"
@interface ResultsCollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong,nonatomic)NSMutableArray *imgArr;
@property(strong,nonatomic)NSMutableArray *nameArr;
@end
