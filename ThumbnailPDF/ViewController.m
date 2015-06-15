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

    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] init];
    spinner.frame = CGRectMake(self.imageView.frame.size.width / 2, self.imageView.frame.size.height / 2, 20, 20);
    spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [self.imageView addSubview:spinner];
    [spinner startAnimating];
    
    ThumbnailPDF *thumbPDF = [[ThumbnailPDF alloc] init];
    [thumbPDF startWithCompletionHandler:data andSize:500 completion:^(ThumbnailPDF *ThumbnailPDF, BOOL finished) {
        if (finished) {
            _imageView.image = [UIImage imageWithCGImage:ThumbnailPDF.myThumbnailImage];
            [spinner stopAnimating];
        }
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
