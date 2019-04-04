//
//  CViewController.m
//  MainProject
//
//  Created by CoderSLZeng on 2019/4/4.
//  Copyright © 2019 CoderSLZeng. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@property (strong, nonatomic) UILabel *contentLabel;

@property (strong, nonatomic) UIButton *dismissCurrentViewControllerButton;

@end

@implementation CViewController

#pragma mark - life cycle
- (instancetype)initWithContentText:(NSString *)contentText {
    if (self = [super init]) {
        self.contentLabel.text = contentText;
    }
    
    return self ;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.contentLabel];
    [self.view addSubview:self.dismissCurrentViewControllerButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self.contentLabel sizeToFit];
    self.contentLabel.center = self.view.center;
    
    [self.dismissCurrentViewControllerButton sizeToFit];
    CGSize size = self.dismissCurrentViewControllerButton.bounds.size;
    self.dismissCurrentViewControllerButton.frame = CGRectMake(20, 20, size.width, size.height);
}

#pragma mark - event reponse
- (void)didTouchedDismissCurrentViewControllerButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - getter and setter
- (UILabel *)contentLabel {
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    
    return _contentLabel;
}

- (UIButton *)dismissCurrentViewControllerButton {
    if (!_dismissCurrentViewControllerButton) {
        _dismissCurrentViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_dismissCurrentViewControllerButton setTitle:@"点击退出当前控制器" forState:UIControlStateNormal];
        [_dismissCurrentViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_dismissCurrentViewControllerButton addTarget:self
                                                action:@selector(didTouchedDismissCurrentViewControllerButton)
                                      forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _dismissCurrentViewControllerButton;
}



@end
