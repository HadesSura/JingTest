//
//  OneViewVM.m
//  Test1112
//
//  Created by Mac01 on 2020/7/30.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import "OneViewVM.h"


@implementation OneViewVM

- (instancetype)init{
    self = [super init];
    if (self) {
        @weakify(self)
        self.requestRemoteDataCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(NSNumber *  _Nullable input) {
            @strongify(self)
                return [self requestData];
        }];
    }
    return self;
}

- (RACSignal *)requestData {
    NSArray *arr = @[@"hehe",@"haha",@"xixi",@"luelue",@"houhou"];
    int x = arc4random() % 5;
    self.ranStr = arr[x];

    return [RACSignal empty];
}


@end
