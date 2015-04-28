//
//  ThumbnailPDF.m
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import "ThumbnailPDF.h"


@implementation ThumbnailPDF

@synthesize sURL = _sURL;
@synthesize dataFile = _dataFile;


-(id)initWithURLPDF:(NSString *)sURL {
    
    return self;
}
-(id)initWithDataPDF:(NSData *)data {
    self = [super init];
    if (self) {
        CreateThumbnailPDFFromData(data, 0);
    }
    
    
    return self;
}
CGImageRef CreateThumbnailPDFFromData (NSData *data, int imageSize) {
    
}
@end
