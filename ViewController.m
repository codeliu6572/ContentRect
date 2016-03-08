//
//  ViewController.m
//  ContentRect
//
//  Created by 刘浩浩 on 16/3/8.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@end

@implementation ViewController

-(void)addStretchableImage:(UIImage *)image withContentCenter:(CGRect)rect toLayer:(CALayer *)layer
{
    //set image
    layer.contents = (__bridge id)image.CGImage;
    //set contentsCenter
    layer.contentsCenter = rect;
}
- (void)viewDidLoad
{
    [super viewDidLoad]; //load button image
    UIImage *image = [UIImage imageNamed:@"80X80.png"];
    
    //set button 1
    [self addStretchableImage:image withContentCenter:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:self.view1.layer];
     //set button 2
    [self addStretchableImage:image withContentCenter:CGRectMake(0, 0, 0.5, 0.5) toLayer:self.view2.layer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
