//
//  ValidationViewController.h
//  LeServiceTimbre
//
//  Created by Christopher Saez on 05/03/2016.
//  Copyright © 2016 Christopher Saez. All rights reserved.
//

#import "CommonViewController.h"

@protocol ConfirmationDelegate

-(void) didPrepareNewOrder;
@end

@interface ValidationViewController : CommonViewController
@property (strong, nonatomic) id<ConfirmationDelegate> delegate;


@end
