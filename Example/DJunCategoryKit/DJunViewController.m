//
//  DJunViewController.m
//  DJunCategoryKit
//
//  Created by DJunJjie on 04/15/2019.
//  Copyright (c) 2019 DJunJjie. All rights reserved.
//

#import "DJunViewController.h"
#import "UIImage+MJ.h"
#import "UIView+Extension.h"
@interface DJunViewController ()

@end

@implementation DJunViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(30, 44, 120, 60);
    imageView.y = 100;
    imageView.backgroundColor = [UIColor redColor];
    UIImage *image = [UIImage imageNamed:@"icon_ios7"];
    imageView.image = image;
    [self.view addSubview:imageView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
