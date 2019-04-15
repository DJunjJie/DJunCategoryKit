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
    UIImage *image = [UIImage imageNamed:@"sawtooth@2x.png"];
    image = [self llbWordReviewImageNamed:@"big" type:@"png"];
    imageView.image = image;
    [self.view addSubview:imageView];
	// Do any additional setup after loading the view, typically from a nib.
}

    
- (UIImage *)llbWordReviewImageNamed:(NSString *)name type:(NSString *)type {
    NSString *mainBundlePath = [NSBundle mainBundle].bundlePath;
    NSString *bundlePath = [NSString stringWithFormat:@"%@/%@",mainBundlePath,@"DJunCategoryKit.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    if (bundle == nil) {
        bundlePath = [NSString stringWithFormat:@"%@/%@",mainBundlePath,@"Frameworks/DJunCategoryKit.framework/DJunCategoryKit.bundle"];
        bundle = [NSBundle bundleWithPath:bundlePath];
    }
    if ([UIImage respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)]) {
        return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
    } else {
        return [UIImage imageWithContentsOfFile:[bundle pathForResource:name ofType:type]];
    }
}
    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
