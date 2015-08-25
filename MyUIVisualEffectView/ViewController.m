//
//  ViewController.m
//  MyUIVisualEffectView
//
//  Created by liqunfei on 15/8/25.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIVisualEffectView *visualEfView;
}
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainImageView.image = [UIImage imageNamed:@"1.jpg"];
    visualEfView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    visualEfView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2);
    visualEfView.alpha = 0.9;
    [self.mainImageView addSubview:visualEfView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
