//
//  HLLDetailViewController.m
//  HLLTassky
//
//  Created by admin on 15/12/11.
//  Copyright © 2015年 HLL. All rights reserved.
//

#import "HLLDetailViewController.h"
#import "HLLHamburgerView.h"
#import "HLLContainerViewController.h"


@interface HLLDetailViewController ()
@property (nonatomic ,strong) HLLHamburgerView * hamburgerView;

@end

@implementation HLLDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer * tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    _hamburgerView = [[HLLHamburgerView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    
    [_hamburgerView addGestureRecognizer:tapGestureRecognizer];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_hamburgerView];
    // Do any additional setup after loading the view.
}
- (void) tap:(UITapGestureRecognizer *)tap{

    UINavigationController * navigation = (UINavigationController *)self.presentedViewController;
    HLLContainerViewController * container = (HLLContainerViewController *)navigation.presentedViewController;
    [container hidenOrShow:container.showingMenu animation:YES];
    
    
//    let navigationController = parentViewController as! UINavigationController
//    let containerViewController = navigationController.parentViewController as! ContainerViewController
//    containerViewController.hideOrShowMenu(!containerViewController.showingMenu, animated: true)
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
