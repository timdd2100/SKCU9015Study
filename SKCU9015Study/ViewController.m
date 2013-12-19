//
//  ViewController.m
//  SKCU9015Study
//
//  Created by timkao on 13/12/18.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize ScrollView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //設定大小size
    self.ScrollView.contentSize = CGSizeMake(320, 800);
    
    
    // 是否反彈
 
    //    ScrollView.bounces = NO;
  
    // 是否分頁
    
    //    ScrollView.pagingEnabled = YES;
    
    // 是否滾動
    
    //    ScrollView.scrollEnabled = NO;
    
    ScrollView.showsHorizontalScrollIndicator = YES;
    
    ScrollView.showsVerticalScrollIndicator = YES;
    
    // 設置indicator風格
    
    ScrollView.indicatorStyle = UIScrollViewIndicatorStyleDefault;
    
    // 設置内容的邊緣和Indicators編缘
    
    //    ScrollView.contentInset = UIEdgeInsetsMake(0, 50, 50, 0);
    
    //    ScrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 50, 0, 0);
    
    // 提示用户,Indicators flash
    
    //[ScrollView flashScrollIndicators];
    
    
    //是否方向鎖定
    //ScrollView.directionalLockEnabled = YES;
    
    //委派
    ScrollView.delegate = self;
    
    //是否支援滑動到頂部
    //ScrollView.scrollsToTop = NO;

    
    #pragma -mark 測試UI
    //加入label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 40)];
    
    label.text = @"認真學scrolleview";
    
    ScrollView.backgroundColor = [UIColor grayColor];

    [ScrollView addSubview:label];
    
    
}

#pragma mark - delegate function

//-(BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
//{
//    return YES;
//}

//已經滑動時就會觸發
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"嘿嘿～你抓不到我");
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
