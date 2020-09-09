//
//  Person.m
//  Test1112
//
//  Created by Mac01 on 2020/8/25.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import "Person.h"

@implementation Person
+(void)load{
    NSLog(@"%s",__FUNCTION__);
}

- (Person * (^)(NSString *))per_name{
    return ^Person * (NSString * name){
        self.name = name;
        return self;
    };
}
- (Person * (^)(int))per_tall{
    return ^Person * (int tall){
        self.tall = tall;
        return self;
    };
}
- (Person * (^)(int))per_age{
    return ^Person * (int age){
        self.age = age;
        return self;
    };
}

- (Person * (^)(void))run{
    return ^Person * (void){
        NSLog(@"我在跑步");
        return self;
    };
}

- (void)hit{
    
}
@end
