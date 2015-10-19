//
//  BaseViewController.m
//  MyApp
//
//  Created by zenith on 15/4/1.
//  Copyright (c) 2015年 Wang. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // nav
    self.nanvView=[[UIView alloc]init];
    [self.nanvView setFrame:CGRectMake(0, 0, deviceWith, 64)];
//    self.nanvView.hidden=YES;
    self.nanvView.backgroundColor=[UIColor colorWithRed:61/255.0 green:187/255.0 blue:190/255.0 alpha:1.0];
//    [UIColor colorWithRed:45.0/255.0 green:68.0/255.0 blue:135.0/255.0 alpha:1.0];
    [self.view addSubview:self.nanvView];////
    
    self.titleLabel=[[UILabel alloc]init];
    [self.titleLabel setFrame:CGRectMake((self.nanvView.frame.size.width-160)/2, 20, 160, self.nanvView.frame.size.height-20)];
    [self.titleLabel setBackgroundColor:[UIColor clearColor]];
    [self.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:18]];
    [self.titleLabel setTextColor:[UIColor whiteColor]];
    self.titleLabel.textAlignment=NSTextAlignmentCenter;
    [self.nanvView addSubview:self.titleLabel];
    
    self.backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.backButton setFrame:CGRectMake(0, (self.nanvView.frame.size.height-20-40)/2+20, 70, 40)];
    self.backButton.hidden=YES;
    [self.backButton addTarget:self action:@selector(backButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.backButton];
    
    UIImageView *buttonImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 3, 30, 34)];
    buttonImageView.image=[UIImage imageNamed:@"back"];
    [self.backButton addSubview:buttonImageView];
    
    UILabel *buttonLabel=[[UILabel alloc]init];
    [buttonLabel setFrame:CGRectMake(22, 10, 40, 20)];
    [buttonLabel setBackgroundColor:[UIColor clearColor]];
    buttonLabel.text=@"返回";
    [buttonLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
    [buttonLabel setTextColor:[UIColor whiteColor]];
    buttonLabel.textAlignment=NSTextAlignmentLeft;
    [self.backButton addSubview:buttonLabel];
    //pan
    
}
-(void)backButtonClick:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)starteActivity{
    _hideView=[[UIView alloc]initWithFrame:CGRectMake(0, 64, deviceWith, deviceHeight-64)];
    _hideView.alpha=0.2;
    _hideView.backgroundColor=[UIColor blackColor];
    [self.view addSubview:_hideView];//////
    _lView=[[UIView alloc]initWithFrame:CGRectMake(_hideView.frame.size.width/2-50, (_hideView.frame.size.height-100)/2, 80, 80)];
    _lView.layer.cornerRadius=10;
    _lView.backgroundColor=[UIColor blackColor];
    _lView.alpha=0.6;
    [self.view addSubview:_lView];////////
    self.otherView=[[UIView alloc]initWithFrame:_lView.frame];
    self.otherView.backgroundColor=[UIColor clearColor];
    [self.view addSubview:self.otherView];
    UIActivityIndicatorView *_lActivity=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [_lActivity setFrame:CGRectMake(20, 10, 40, 40)];
    _lActivity.backgroundColor=[UIColor clearColor];
    [_lActivity startAnimating];
    [self.otherView addSubview:_lActivity];////
    self.eAccountLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 50, 80, 20)];
    self.eAccountLabel.text=@"正在加载....";
    [self.eAccountLabel setBackgroundColor:[UIColor clearColor]];
    [self.eAccountLabel setFont:[UIFont fontWithName:@"Helvetica" size:13]];
    [self.eAccountLabel setTextColor:[UIColor whiteColor]];
    self.eAccountLabel.textAlignment=NSTextAlignmentCenter;
    [self.otherView addSubview:self.eAccountLabel];

}
-(void)stopeActivity{
    [_hideView removeFromSuperview];
    [_lView removeFromSuperview];
    [_otherView removeFromSuperview];
}
-(id)initWithTitle:(NSString *)titleStr withData:(id)allString withPramers:(NSDictionary *)dictionary{
    self=[super init];
    if (self) {
        self.navgationTitleString=titleStr;
        self.meetingIDString=allString;
        [self.pramersDic addEntriesFromDictionary:dictionary];
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
