//
//  SMLagDB.h
//  DecoupleDemo
//
//  Created by DaiMing on 2017/8/3.
//  Copyright © 2017年 Starming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FMDB/FMDB.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <ReactiveCocoa/RACEXTScope.h>
//#import "SMClsCallModel.h"
#import "SMCallTraceTimeCostModel.h"
#import "SMCallStackModel.h"

#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

#define CPUMONITORRATE 80
#define STUCKMONITORRATE 88

@interface SMLagDB : NSObject

+ (SMLagDB *)shareInstance;
/*------------卡顿和CPU超标堆栈---------------*/
- (RACSignal *)increaseWithStackModel:(SMCallStackModel *)model;
- (RACSignal *)selectStackWithPage:(NSUInteger)page;
- (void)clearStackData;
/*------------ClsCall方法调用频次-------------*/
//添加记录s
- (void)addWithClsCallModel:(SMCallTraceTimeCostModel *)model;
//分页查询
- (RACSignal *)selectClsCallWithPage:(NSUInteger)page;
//清除数据
- (void)clearClsCallData;
@end
