//
//  CountTwoViewController.m
//  MyESuDai
//
//  Created by zenith on 15/10/15.
//  Copyright © 2015年 Wang. All rights reserved.
//

#import "CountTwoViewController.h"

@interface CountTwoViewController ()

@end

@implementation CountTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nanvView.hidden=NO;
    self.titleLabel.text=@"我的账户2";
    self.backButton.hidden=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
