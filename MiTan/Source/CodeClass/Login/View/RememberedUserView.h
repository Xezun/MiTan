//
//  RememberedUserView.h
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RememberedUserViewDelegate <NSObject>

-(void)didSelectImageAtIndes:(NSInteger)index;
-(void)image:(UIImageView *)imageview;


@end

@interface RememberedUserView : UIView

@property(nonatomic,strong)id<RememberedUserViewDelegate> delegate;
@property(nonatomic,strong)UIImageView *image1;
@property(nonatomic,strong)UIImageView *image2;
@property(nonatomic,strong)UIImageView *image3;

@end
