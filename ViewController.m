//
//  ViewController.m
//  delete
//
//  Created by Littlebox222 on 14/12/19.
//  Copyright (c) 2014年 Littlebox222. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize coreTextScrollView = _coreTextScrollView;

- (NSStringEncoding)encodeOfFile:(NSString *)filePath {
    
    const NSStringEncoding *encodings = [NSString availableStringEncodings];
    NSString *test = @"😄大a哥bπc你d好e啊f》“}！@#￥%……&*QWERTYUIqwertyuio请问儿童Yui《》？：“{}|，。、阿什利金佛；大公鸡IOS的奶粉了凯撒的佛是大佛寺啊的佛纳忙死了放得开21；‘【】、<>?:{}|,./[]";
    
    NSStringEncoding encoding;
    while ((encoding = *encodings++) != 0) {
        
        if (encoding == 2415919360 || encoding == 2483028224) continue;
        
        NSMutableData *data = [NSMutableData dataWithContentsOfFile:filePath];
        [data appendData:[test dataUsingEncoding:encoding]];
        NSString *str = [[NSString alloc] initWithData:data encoding:encoding];
        
        if (str && [str length] > [test length]) {
            NSString *subString = [str substringFromIndex:[str length]-[test length]];
            if (strcmp([subString cStringUsingEncoding:NSUnicodeStringEncoding], [test cStringUsingEncoding:NSUnicodeStringEncoding]) == 0) {
                return encoding;
            }
        }
    }
    
    return 0;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _scrollFeedbackFromOtherControl = YES;
    
    self.coreTextScrollView = [[[CoreTextScrollView alloc] initWithFrame:self.view.frame] autorelease];
    [self.view addSubview:_coreTextScrollView];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"txt"];
    NSStringEncoding encoding = [self encodeOfFile:filePath];
    NSString *text  = [NSString stringWithContentsOfFile:filePath encoding:encoding error:nil];
    
    
    
}

@end
