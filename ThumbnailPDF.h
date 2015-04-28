//
//  ThumbnailPDF.h
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ImageIO/ImageIO.h>

@interface ThumbnailPDF : NSObject

#pragma Properties

@property (nonatomic, strong) NSURL  *baseURL;


@property (nonatomic, strong) NSData *dataPdf;


//Create thumbnail from a NSData with param imageSize
CGImageRef CreateThumbnailFromData(NSData *data, int imageSize);


@end
