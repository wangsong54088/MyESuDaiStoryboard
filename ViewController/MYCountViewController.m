//
//  MYCountViewController.m
//  MyESuDai
//
//  Created by zenith on 15/10/15.
//  Copyright © 2015年 Wang. All rights reserved.
//

#import "MYCountViewController.h"
#import "MyTableViewCell.h"
#import "CountTwoViewController.h"
#import "CountThreeViewController.h"
#import "CountOneViewController.h"
#import "MyCountTableViewCell.h"

@interface MYCountViewController ()

@end

@implementation MYCountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nanvView.hidden=NO;
    self.titleLabel.text=@"我的e速贷";
    self.backButton.hidden=NO;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
          
        default:
            return 2;
            break;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 1:
        {
            static NSString *cellID = @"MyTableViewCell";
            MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
            if(cell==nil){
                cell = [[[NSBundle mainBundle] loadNibNamed:@"MyTableViewCell" owner:self options:nil] lastObject];
            }
            cell.myLabel.text=@"涣发大号好烦";
            
            return cell;
            
            break;
        }
            
        default:
        {
            static NSString *cellID = @"MyCountTableViewCell";
            MyCountTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
            if(cell==nil){
                cell = [[[NSBundle mainBundle] loadNibNamed:@"MyCountTableViewCell" owner:self options:nil] lastObject];
            }
            cell.nameLabel.text=@"我是是";
            cell.infoLabel.text=@"房贷房贷规";
            return cell;
            
            break;
        }
    }
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            [self performSegueWithIdentifier:@"oneCount" sender:self];
            
            break;
        }
        case 1:
        {
            [self performSegueWithIdentifier:@"twoCount" sender:self];
            
            break;
        }
        case 2:
        {
            [self performSegueWithIdentifier:@"threeCount" sender:self];
            
            break;
        }
        default:
            break;
    }
    
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
