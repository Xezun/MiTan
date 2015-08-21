//
//  MainPage.m
//  MiTan
//
//  Created by thl on 15/8/20.
//  Copyright (c) 2015年 thl. All rights reserved.
//

#import "MainPage.h"
#import "MainPageCell.h"

@implementation MainPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 10;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     MainPageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
     if (!cell) {
         cell = [[MainPageCell alloc] init];
         
     }
 
 return cell;
 }

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 400;
}


@end
