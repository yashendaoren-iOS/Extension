//
//  NSDictionary+category.h
//  延展
//
//  Created by Silver on 2017/4/7.
//  Copyright © 2017年 Silver. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (category)

- (void)doSomeThing;

//一下两个方法达到了增加属性的目的 其实是增加了 set get方法原则上来说，是不能增加属性的）
- (NSString *)addr;
- (void)setAddr:(NSString *)addr;

@end
