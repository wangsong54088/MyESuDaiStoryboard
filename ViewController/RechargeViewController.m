//
//  RechargeViewController.m
//  MyESuDai
//
//  Created by zenith on 15/10/19.
//  Copyright © 2015年 Wang. All rights reserved.
//

#import "RechargeViewController.h"
#import "RechargeSuccessViewController.h"

@interface RechargeViewController ()

@end

@implementation RechargeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nanvView.hidden=NO;
    self.titleLabel.text=@"我要充值";
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

//storyborad传值方法
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // segue.identifier：获取连线的ID
    if ([segue.identifier isEqualToString:@"sendValue"]) {
        // segue.destinationViewController：获取连线时所指的界面（VC）
        RechargeSuccessViewController *receive = segue.destinationViewController;
        receive.name = @"Garvey";
        
    }
}
@end
