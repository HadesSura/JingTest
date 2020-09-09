//
//  Person.h
//  Test1112
//
//  Created by Mac01 on 2020/8/25.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger tall;
@property (nonatomic, assign) NSInteger age;


- (Person * (^)(NSString *))per_name;
- (Person * (^)(int))per_tall;
- (Person * (^)(int))per_age;
- (Person * (^)(void))run;

- (void)hit;


@end

NS_ASSUME_NONNULL_END
