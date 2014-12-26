//
//  ViewController.m
//  HugeImage
//
//  Created by hellovoidworld on 14/11/28.
//  Copyright (c) 2014年 hellovoidworld. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)scroll;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置滚动范围，这里用图片实际大小
    self.scrollView.contentSize = self.imageView.frame.size;
 
    // 增加边距显示，参数分别是top, left, bottom, right
    self.scrollView.contentInset = UIEdgeInsetsMake(10, 20, 40, 80);
    
    // 移动到(200, 300)位置
    self.scrollView.contentOffset = CGPointMake(0, -55);
    
//    [self.scrollView setBounces:NO];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scroll {
    CGPoint offset = self.scrollView.contentOffset;
    offset.x += 10;
    offset.y += 10;
    [self.scrollView setContentOffset:offset];
}
@end


