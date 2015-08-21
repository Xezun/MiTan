//
//  WTbaseNavigationVController.m
//  MiTan
//
//  Created by thl on 15/8/17.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "WTbaseNavigationVController.h"
#import "UIBarButtonItem+WTbarButtonItem.h"

@interface WTbaseNavigationVController ()

@end

@implementation WTbaseNavigationVController

+ (void)initialize
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/**
 *  改写系统push方法
 *
 *  @param viewController viewController 将要push进来的controller
 *  @param animated       animated description
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    viewController.navigationItem.leftBarButtonItem  = [UIBarButtonItem addItemWithTarget:self sel:@selector(back) image:@"navigationbar_back" selImagae:@"UIControlStateHighlighted"];
    viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem addItemWithTarget:self sel:@selector(share) image:@"navigationbar_more" selImagae:@"UIControlStateHighlighted"];
    

    [super pushViewController:viewController animated:YES];
}




- (void)back
{
  
    [self popViewControllerAnimated:YES];
}

- (void)share
{
   
};

@end
