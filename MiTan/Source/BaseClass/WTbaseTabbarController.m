//
//  WTbaseTabbarController.m
//  MiTan
//
//  Created by thl on 15/8/17.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "WTbaseTabbarController.h"

@interface WTbaseTabbarController ()

@end

@implementation WTbaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MainPage *mainpage = [[MainPage alloc] init];
    [self tabbarWithTableViewCon:mainpage title:@"首页" image:@"tabbar_home" selImage:@"tabbar_home_selected"];

    MessageViewController *message = [[MessageViewController alloc] init];
    [self tabbarWithTableViewCon:message title:@"消息" image:@"tabbar_message_center" selImage:@"tabbar_message_center_selected"];

    AroundViewController *around = [[AroundViewController alloc] init];
    [self tabbarWithTableViewCon:around title:@"周边" image:@"tabbar_discover" selImage:@"tabbar_discover_selected"];
    
    MyTableViewController *my = [[MyTableViewController alloc] init];
    [self tabbarWithTableViewCon:my title:@"我" image:@"tabbar_profile" selImage:@"tabbar_profile_selected"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



/**
 *  tabbar样式设置
 *
 *  @param con      con tabbaar对应的controller
 *  @param title    title tabbar对应的文字
 *  @param image    image tabbar对应的图片
 *  @param selimage selimage tabbar对应的高亮图片
 */
- (void)tabbarWithTableViewCon:(UIViewController *)con title:(NSString *)title image:(NSString *)image selImage:(NSString *)selimage
{
    con.tabBarItem.image                   = [UIImage imageNamed:image];

    con.tabBarItem.selectedImage           = [[UIImage imageNamed:selimage] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];

    con.tabBarItem.title                   = title;
    NSMutableDictionary *normal            = [NSMutableDictionary dictionary];
    normal[NSForegroundColorAttributeName] = [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1];

    NSMutableDictionary *seldic            = [NSMutableDictionary dictionary];
    seldic[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [con.tabBarItem setTitleTextAttributes:seldic forState:(UIControlStateHighlighted)];
    WTbaseNavigationVController *vn        = [[WTbaseNavigationVController alloc] initWithRootViewController:con];

    [self addChildViewController:vn];

}

@end
