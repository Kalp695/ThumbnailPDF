//
//  ViewController.h
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CompletionHandler)(BOOL);

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

