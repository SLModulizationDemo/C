//
//  Target_C.m
//  C
//
//  Created by CoderSLZeng on 2019/4/4.
//  Copyright © 2019 CoderSLZeng. All rights reserved.
//

#import "Target_C.h"
#import "CViewController.h"

@implementation Target_C

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    
    NSString *contentText = params[@"contentText"];
    CViewController *vc = [[CViewController alloc] initWithContentText:contentText];
    return vc;
}

@end
