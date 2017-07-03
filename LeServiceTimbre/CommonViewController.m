//
//  CommonViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "CommonViewController.h"
#import <RESideMenu/RESideMenu.h>

@interface CommonViewController ()

@end

@implementation CommonViewController

-(void) viewDidLoad{
	[super viewDidLoad];
	
	if (self.navigationController.viewControllers.count == 1) { // On ne met le bouton du menu hamburger que si il est premier dans la hierarchie
		UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu"] style:UIBarButtonItemStylePlain target:self action:@selector(didTouchMenuButton)];
		self.navigationController.navigationBar.barTintColor = UIColorFromRGB(0x3569d4);
		[self.navigationItem setLeftBarButtonItem:leftBarButton];
		[self.navigationController.navigationBar setTranslucent:NO];
		[self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
		
	}
	
	UINavigationBar *navigationBar = self.navigationController.navigationBar;
	
	[navigationBar setBackgroundImage:[UIImage new]
					   forBarPosition:UIBarPositionAny
						   barMetrics:UIBarMetricsDefault];
	
	[navigationBar setShadowImage:[UIImage new]];
}

-(void) didTouchMenuButton{
	[self.sideMenuViewController presentLeftMenuViewController];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle) preferredStatusBarStyle{
	return UIStatusBarStyleLightContent;
}

-(void) setCustomTitle:(NSString*) title{
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 34)];
	label.text = title;
	label.textColor = [UIColor whiteColor];
	self.navigationItem.titleView = label;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
