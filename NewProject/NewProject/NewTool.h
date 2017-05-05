//
//  NewTool.h
//  NewProject
//
//  Created by along on 2017/5/5.
//  Copyright © 2017年 SongXiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewTool : NSObject
+(NewTool *)autorotateTool;
@property (assign , nonatomic) BOOL isAutorotate;
@property (assign , nonatomic) BOOL autorotate;
@end
