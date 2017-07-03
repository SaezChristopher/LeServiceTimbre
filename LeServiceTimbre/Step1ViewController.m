//
//  Step1ViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "Step1ViewController.h"
#import "HomeViewController.h"
#import <RESideMenu/RESideMenu.h>

@interface Step1ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *validateButton;

@end

@implementation Step1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.validateButton.layer.cornerRadius = 3;
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
- (IBAction)didTouchValidateButton:(id)sender {

	HomeViewController *controller = (HomeViewController*)((UINavigationController*)self.sideMenuViewController.contentViewController).topViewController;
	[controller.carbonTabSwipeNavigation setCurrentTabIndex:1];

}

@end
