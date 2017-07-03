//
//  HomeViewController.h
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonViewController.h"
#import "CarbonKit.h"

@interface HomeViewController : CommonViewController<CarbonTabSwipeNavigationDelegate>

@property (nonatomic, strong) CarbonTabSwipeNavigation *carbonTabSwipeNavigation;

@end
