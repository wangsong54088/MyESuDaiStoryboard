//
//  RechargeSuccessViewController.m
//  MyESuDai
//
//  Created by zenith on 15/10/19.
//  Copyright © 2015年 Wang. All rights reserved.
//

#import "RechargeSuccessViewController.h"
#import "MYCountViewController.h"

@interface RechargeSuccessViewController ()

@end

@implementation RechargeSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nanvView.hidden=NO;
    self.titleLabel.text=@"充值成功返回e速贷页面";
    self.backButton.hidden=NO;
    
    NSLog(@"name is %@",self.name);
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

- (IBAction)backESuDaiButtonClick:(UIButton *)sender {
    MYCountViewController *mycount=[[MYCountViewController alloc]init];
    for (UIViewController *lController in self.navigationController.viewControllers) {
        if ([lController isKindOfClass:[mycount class]]) {
            [self.navigationController popToViewController:lController animated:YES];
            return;
        }
    }
}
@end
