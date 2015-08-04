//
//  ViewController.m
//  UILabel+AttributedTextDemo
//
//  Created by chen Yuheng on 15/8/4.
//  Copyright (c) 2015年 chen Yuheng. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+AttributedString.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UILabel *testLabel_1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *orig = @"☞☞☞师姐说标题要长才☞☞能引起师妹们的关注！！！";
    self.testLabel.font = [UIFont boldSystemFontOfSize:15.0f];
    self.testLabel.numberOfLines = 0;
    self.testLabel.text = orig;
    
    //错误的示范
    self.testLabel_1.font = [UIFont boldSystemFontOfSize:15.0f];
    self.testLabel_1.numberOfLines = 0;
    self.testLabel_1.text = orig;
    
    //修复成功后的示范
    NSLog(@"%@",self.testLabel.attributedText);
    [self.testLabel as_setAttributedText];
    NSLog(@"%@",self.testLabel.attributedText);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
