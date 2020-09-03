//
//  OneViewVM.h
//  Test1112
//
//  Created by Mac01 on 2020/7/30.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveObjC/ReactiveObjC.h>

NS_ASSUME_NONNULL_BEGIN

@interface OneViewVM : NSObject
//请求数据
@property (nonatomic, strong) RACCommand *requestRemoteDataCommand;
@property (nonatomic, copy) NSString *ranStr;
//默认请求网络
- (RACSignal *)requestData;
@end

NS_ASSUME_NONNULL_END
