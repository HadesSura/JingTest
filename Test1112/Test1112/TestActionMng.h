//
//  TestActionMng.h
//  Test1112
//
//  Created by Mac01 on 2020/7/28.
//  Copyright © 2020 Mac01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ActionGroup.h"
NS_ASSUME_NONNULL_BEGIN

@interface TestActionMng : NSObject
@property (nonatomic, retain) ActionGroup *  appGroup;
+ (TestActionMng *)shareMng;
- (TestAction * )defaultAction;
@end

NS_ASSUME_NONNULL_END
