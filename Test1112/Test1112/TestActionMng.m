//
//  TestActionMng.m
//  Test1112
//
//  Created by Mac01 on 2020/7/28.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import "TestActionMng.h"


@implementation TestActionMng

+ (TestActionMng *)shareMng{
    static TestActionMng *msg = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        msg = [[TestActionMng alloc]init];
    });
    return msg;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _appGroup = [ActionGroup new];
    }
    return self;
}

- (TestAction*)defaultAction {
    TestAction* action = [TestAction new];
    action.action = self.appGroup;
    return action;
}

@end
