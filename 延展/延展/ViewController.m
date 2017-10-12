//
//  ViewController.m
//  延展
//
//  Created by Silver on 2017/4/7.
//  Copyright © 2017年 Silver. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+category.h"

@interface ViewController ()

//延展  只为自己所见，所用的私有方法或属性
@property (strong,nonatomic)NSString *extension;
- (void)extensionDoSomeThing;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSDictionary *dic = [[NSDictionary alloc] init];
    //类目增加方法
    [dic doSomeThing];
    //类目增加属性 （原则上来说，是不能增加属性的）
    dic.addr = @"hello";
    NSLog(@"%@", dic.addr);
    
    //延展
    self.extension = @"延展";
    NSLog(@"%@",self.extension);
    [self extensionDoSomeThing];
}


- (void)extensionDoSomeThing {
    NSLog(@"这是一个延展的私有方法");

}


@end
