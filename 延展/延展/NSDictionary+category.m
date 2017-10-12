//
//  NSDictionary+category.m
//  延展
//
//  Created by Silver on 2017/4/7.
//  Copyright © 2017年 Silver. All rights reserved.
//

#import "NSDictionary+category.h"
#import <objc/runtime.h>

@implementation NSDictionary (category)

- (void)doSomeThing{

    NSLog(@"这是一个类目（分类）");
}

static char strAddrKey = 'a';
- (NSString *)addr
{
    return objc_getAssociatedObject(self, &strAddrKey);
}
- (void)setAddr:(NSString *)addr
{
    objc_setAssociatedObject(self, &strAddrKey, addr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
@end
