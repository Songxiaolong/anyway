//
//  NewTool.m
//  NewProject
//
//  Created by along on 2017/5/5.
//  Copyright © 2017年 SongXiaolong. All rights reserved.
//

#import "NewTool.h"

@implementation NewTool
static NewTool * _autorotate;
+(NewTool *)autorotateTool{
    if (!_autorotate) {
        _autorotate = [[NewTool alloc]init];
    }
    return _autorotate;
}
@end
