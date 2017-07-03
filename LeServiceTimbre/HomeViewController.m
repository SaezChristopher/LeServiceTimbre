//
//  HomeViewController.m
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	[self setCustomTitle:@"Nouvel envoi"];
	
	NSArray *items = @[[@"Destination" uppercaseString], [@"Options & prix" uppercaseString], [@"Confirmation" uppercaseString]];
	
	UIToolbar *toolbar = [UIToolbar new];
	toolbar.backgroundColor = UIColorFromRGB(0x6391ff);
	self.carbonTabSwipeNavigation =
	[[CarbonTabSwipeNavigation alloc] initWithItems:items delegate:self];
	
	self.carbonTabSwipeNavigation.toolbar.translucent = NO;
	self.carbonTabSwipeNavigation.toolbar.barTintColor = UIColorFromRGB(0x6290FF);
	[self.carbonTabSwipeNavigation insertIntoRootViewController:self];
	UIFont *font = [UIFont systemFontOfSize:11];
	[self.carbonTabSwipeNavigation setIndicatorColor:UIColorFromRGB(0xffe06a)];
	[self.carbonTabSwipeNavigation setSelectedColor:UIColorFromRGB(0xffe06a) font:font];
	[self.carbonTabSwipeNavigation setNormalColor:[UIColor whiteColor] font:font];
	[self.carbonTabSwipeNavigation.carbonSegmentedControl setWidth:self.view.frame.size.width/3 forSegmentAtIndex:1];
	[self.carbonTabSwipeNavigation.carbonSegmentedControl setWidth:self.view.frame.size.width/3 forSegmentAtIndex:2];
	[self.carbonTabSwipeNavigation.carbonSegmentedControl setWidth:self.view.frame.size.width/3 forSegmentAtIndex:0];
}

-(UIStatusBarStyle) preferredStatusBarStyle{
	return [super preferredStatusBarStyle];
}

// delegate
- (UIViewController *)carbonTabSwipeNavigation:(CarbonTabSwipeNavigation *)carbontTabSwipeNavigation
						 viewControllerAtIndex:(NSUInteger)index {
	
	if (index == 0){
		return [self.storyboard instantiateViewControllerWithIdentifier:@"Step1ViewController"];
	} else if (index == 1){
		return [self.storyboard instantiateViewControllerWithIdentifier:@"Step2ViewController"];
	} else {
		return [self.storyboard instantiateViewControllerWithIdentifier:@"Step3ViewController"];
	}
	
}

@end
