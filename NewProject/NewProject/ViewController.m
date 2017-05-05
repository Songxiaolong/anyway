//
//  ViewController.m
//  NewProject
//
//  Created by along on 2017/5/5.
//  Copyright © 2017年 SongXiaolong. All rights reserved.
//

#import "ViewController.h"
#import "NewTool.h"
#import "NewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
    text.textAlignment = NSTextAlignmentCenter;
    text.text = @"此页面由于Appdelegate内的设置，已经内强制竖屏";
    [self.view addSubview:text];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [but setTitle:@"点击此处下一页面会被打开横竖屏" forState:UIControlStateNormal];
    [but setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [but addTarget:self action:@selector(ClickNext) forControlEvents:UIControlEventTouchUpInside];
    but.frame = CGRectMake(0, 300, self.view.frame.size.width, 50);
    [self.view addSubview:but];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)ClickNext{
    NewViewController *NewVC = [[NewViewController alloc] init];
    [self.navigationController pushViewController:NewVC animated:YES];
}

@end
