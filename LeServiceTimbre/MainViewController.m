//
//  MainViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)awakeFromNib
{
	self.menuPreferredStatusBarStyle = UIStatusBarStyleLightContent;
	self.contentViewShadowColor = [UIColor blackColor];
	self.contentViewShadowOffset = CGSizeMake(0, 0);
	self.contentViewShadowOpacity = 0.6;
	self.contentViewShadowRadius = 12;
	self.contentViewShadowEnabled = YES;
	
	self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentViewController"];
	self.leftMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuViewController"];
	self.delegate = self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(UIStatusBarStyle) preferredStatusBarStyle{
	return UIStatusBarStyleLightContent;
}
@end
