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

-(id)init;

@property (nonatomic, strong) NSURL  *baseURL;
@property (nonatomic, strong) NSData *data;
@property (nonatomic, assign) int     imageSize;
@property (nonatomic, assign) int     indexPage;


-(CGImageRef)thumbnailFromData:(NSData *)data andSize:(int)size;
-(CGImageRef)thumbnailFromData:(NSData *)data andSize:(int)size andPageIndex:(int)indexPage;

//-(CGImageRef)thumbnailFroURL:(NSURL *)URL andSize:(int)size andPageIndex:(int)indexPage;

@end
