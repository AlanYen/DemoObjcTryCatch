//
//  ViewController.m
//  DemoObjcTryCatch
//
//  Created by AlanYen on 2015/9/9.
//  Copyright (c) 2015年 17Life. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTest1ButtonPressed:(id)sender {
    
    //
    // 測試 NSRangeException
    //
    NSArray *array = @[];
    @try {
        NSString *firstObject = [array objectAtIndex:1];
        NSLog(@"firstObject: %@", firstObject);
    }
    @catch (NSException *exception) {
        NSLog(@"exception name is %@ (reason is %@)", exception.name, exception.reason);
    }
    @finally {
        NSLog(@"finally 執行了..");
    }
    NSLog(@"外面執行了..");
}

- (IBAction)onTest2ButtonPressed:(id)sender {
    
    //
    // 測試自定義 exception
    //
    @try {
        [self testException];
    }
    @catch (NSException *exception) {
        NSLog(@"exception name is %@ (reason is %@)", exception.name, exception.reason);
    }
    @finally {
        NSLog(@"finally 執行了..");
    }
    NSLog(@"外面執行了..");
}

- (void)testException {
    
    NSException *excetpion =
    [NSException exceptionWithName:@"MyException"
                            reason:@"test exception"
                          userInfo:nil];
    @throw excetpion;
    
    //或者這樣
    //[NSException raise:@"MyException" format:@"test exception"];
}

@end
