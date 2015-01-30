//
//  ViewController.h
//  delete
//
//  Created by Littlebox222 on 14/12/19.
//  Copyright (c) 2014年 Littlebox222. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CoreTextScrollView.h"

@interface ViewController : UIViewController <UIScrollViewDelegate> {
    
    CoreTextScrollView *_coreTextScrollView;
    BOOL _scrollFeedbackFromOtherControl;
}

@property (nonatomic, retain) CoreTextScrollView *coreTextScrollView;


@end

