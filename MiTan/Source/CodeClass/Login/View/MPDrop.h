//
//  MPDrop.h
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MPDropDelegate <NSObject>

-(void)didTagWithFlag:(BOOL)flag;

@end

@interface MPDrop : UIView
@property(nonatomic,strong)UITextField *nameTextfield;
@property(nonatomic,strong)UIButton *button;
@property(nonatomic,strong)UIView *view;
@property(nonatomic,assign)BOOL flag;
@property(nonatomic,strong)id<MPDropDelegate> delegate;


@end
