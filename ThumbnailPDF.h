//
//  ThumbnailPDF.h
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ImageIO/ImageIO.h>

@interface ThumbnailPDF : NSObject {
    NSString *sURL;
    NSData   *dataFile;
}

@property (nonatomic, retain) NSURL *sURL;
@property (nonatomic, retain) NSData *dataFile;


-(id)initWithURLPDF:(NSString *)sURL;
-(id)initWithDataPDF:(NSData*)dataFile;


@end
