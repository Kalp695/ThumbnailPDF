//
//  ThumbnailPDF.m
//  ThumbnailPDF
//
//  Created by Diego Costa on 22/04/15.
//  Copyright (c) 2015 DiegoCosta. All rights reserved.
//

#import "ThumbnailPDF.h"

@implementation ThumbnailPDF


CGImageRef CreateThumbnailFromData (NSData *data, int imageSize) {
    
    CGImageRef myThumbnailImage = NULL;
    CGImageSourceRef myImageSource;
    CFStringRef   myKeys[3];
    CFDictionaryRef myOptions = NULL;
    CFTypeRef     myValues[3];
    
    CFNumberRef   thumbnailSize;
    
    myImageSource = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    
    if (myImageSource == NULL) {
        fprintf(stderr, "Image Source is NULL");
    }
    
    thumbnailSize = CFNumberCreate(NULL, kCFNumberIntType, &imageSize);
    
    myKeys[0] = kCGImageSourceCreateThumbnailWithTransform;
    myValues[0] = (CFTypeRef)kCFBooleanTrue;
    myKeys[1] = kCGImageSourceCreateThumbnailFromImageIfAbsent;
    myValues[1] = (CFTypeRef)kCFBooleanTrue;
    myKeys[2] = kCGImageSourceThumbnailMaxPixelSize;
    myValues[2] = (CFTypeRef)thumbnailSize;
    
    myOptions = CFDictionaryCreate(NULL, (const void **) myKeys,
                                   (const void **) myValues, 2,
                                   &kCFTypeDictionaryKeyCallBacks,
                                   & kCFTypeDictionaryValueCallBacks);
    // Create the thumbnail image using the specified options.
    myThumbnailImage = CGImageSourceCreateThumbnailAtIndex(myImageSource,
                                                           0,
                                                           myOptions);
    // Release the options dictionary and the image source
    // when you no longer need them.
    CFRelease(thumbnailSize);
    CFRelease(myOptions);
    CFRelease(myImageSource);
    // Make sure the thumbnail image exists before continuing.
    
    if (!myThumbnailImage) {
        fprintf(stderr, "Thumbnail image not created from image source.");
    }
    
    return myThumbnailImage;
}


@end
