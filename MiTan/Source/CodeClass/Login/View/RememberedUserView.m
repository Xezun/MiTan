//
//  RememberedUserView.m
//  MiTan
//
//  Created by thl on 15/8/19.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "RememberedUserView.h"


@implementation RememberedUserView

- (instancetype)initWithFrame:(CGRect)frame
{
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];

    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];

    
    
    self = [super initWithFrame:frame];
    if (self) {
       self.image1 = [self imageWithX:30];
        _image1.tag = 100;
        [_image1 addGestureRecognizer:tap1];
        
        self.image2 = [self imageWithX:( (WIDTH - 120)/3.0 + 60)];
        [_image2 addGestureRecognizer:tap2];
        _image2.tag = 101;
        
        self.image3 = [self imageWithX:( (WIDTH - 120)/3.0*2 + 90)];
        [_image3 addGestureRecognizer:tap3];
        _image3.tag = 102;
        
        [self addSubview:_image1];
        [self addSubview:_image2];
        [self addSubview:_image3];
        
        
    }
    
    return self;
}

-(UIImageView *)imageWithX:(CGFloat)x
{
    UIImageView *image = [[UIImageView alloc] init];
    image.frame = CGRectMake(x,5, (WIDTH - 120)/3.0, (WIDTH - 120)/3.0);
    [image.layer setCornerRadius:(WIDTH - 120)/3.0/2.0];
    [image.layer setMasksToBounds:YES];
    image.backgroundColor = [UIColor colorWithRed:0.400 green:0.800 blue:1.000 alpha:0.340];
    image.userInteractionEnabled = YES;
    return image;
}



-(void)tapAction:(UITapGestureRecognizer *)sender
{
    UIView *view = sender.view;
    
    
    switch (view.tag) {
        case 100:
            [self.delegate didSelectImageAtIndes:1];
            break;
            
        case 101:
             [self.delegate didSelectImageAtIndes:2];
            break;
            
        case 102:
             [self.delegate didSelectImageAtIndes:3];
            break;

        default:
            break;
    }
    
   
 
}



//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch = [touches anyObject];
//    
//   UIView *view = touch.view;
//    
//    if (view == _image1) {
//        [self.delegate didSelectImageAtIndes:1];
//    }else if (view == _image2){
//        [self.delegate didSelectImageAtIndes:2];
//    }else if (view == _image3){
//        [self.delegate didSelectImageAtIndes:3];
//    }
//}




@end
