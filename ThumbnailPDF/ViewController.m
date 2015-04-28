//
//  ViewController.m
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import "ViewController.h"
#import "ThumbnailPDF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Thumbnail PDF";
}
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Multipeer_Connectivity" ofType:@"pdf"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    _imageView.image = [UIImage imageWithCGImage:CreateThumbnailFromData(data, 400)];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
