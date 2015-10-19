//
//  BaseViewController.h
//  MyApp
//
//  Created by zenith on 15/4/1.
//  Copyright (c) 2015年 Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface BaseViewController : UIViewController<UIGestureRecognizerDelegate>
{
    UIPanGestureRecognizer *panGesture;
}
//property
@property (nonatomic,strong) NSString *meetingIDString;
@property (nonatomic,strong) NSMutableDictionary *pramersDic;
@property(nonatomic,strong)NSString *navgationTitleString;
@property (nonatomic, retain)UINavigationController *lController;
//navgationBar
@property (nonatomic, retain) UIView *nanvView;
@property (nonatomic, retain)UILabel *titleLabel;
@property (nonatomic, retain)UIButton *backButton;
//loadStatueView
@property(nonatomic,retain)UIView *hideView;
@property(nonatomic,retain)UIView *lView;
@property(nonatomic,retain)UILabel *eAccountLabel;
@property(nonatomic,retain)UIView *otherView;
//method
-(void)backButtonClick:(UIButton *)sender;//back
-(void)starteActivity;
-(void)stopeActivity;
-(NSString *)getCurrentDate;
-(NSString *)getWeekday;
-(NSString *)getWeekdayWithNumber:(int)number;
-(id)initWithTitle:(NSString *)titleStr withData:(id)allString withPramers:(NSDictionary *)dictionary;

@end
