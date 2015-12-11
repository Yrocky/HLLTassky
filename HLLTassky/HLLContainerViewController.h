//
//  HLLContainerViewController.h
//  HLLTassky
//
//  Created by admin on 15/12/11.
//  Copyright © 2015年 HLL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLLContainerViewController : UIViewController

@property (nonatomic ,assign) BOOL showingMenu;

- (void) hidenOrShow:(BOOL)show animation:(BOOL)animation;
@end
