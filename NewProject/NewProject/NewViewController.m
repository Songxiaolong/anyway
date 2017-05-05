//
//  NewViewController.m
//  NewProject
//
//  Created by along on 2017/5/5.
//  Copyright © 2017年 SongXiaolong. All rights reserved.
//

#import "NewViewController.h"
#import "NewTool.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    [but setTitle:@"点击打开横竖屏" forState:UIControlStateNormal];
    [but setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [but addTarget:self action:@selector(ClickNext:) forControlEvents:UIControlEventTouchUpInside];
    but.frame = CGRectMake(0, 300, self.view.frame.size.width, 50);
    [self.view addSubview:but];
    
    // Do any additional setup after loading the view.
}

- (void)ClickNext:(UIButton *)sender{
    if (sender.isSelected == NO) {
        [NewTool autorotateTool].autorotate = YES;
        sender.selected = YES;
        [sender setTitle:@"点击关闭横竖屏" forState:UIControlStateNormal];
    }else{
        [NewTool autorotateTool].autorotate = NO;
        sender.selected = NO;
        [sender setTitle:@"点击打开横竖屏" forState:UIControlStateNormal];
    }
}
@end
