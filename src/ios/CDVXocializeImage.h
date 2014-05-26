//
//  CDVXocializeImage.h
//  Xocialize
//
//  Created by Dustin Nielson on 5/26/14.
//


#import <Foundation/Foundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <Cordova/CDV.h>

//typedef void(^SaveImageCompletion)(NSError* error);

@interface CDVXocializeImage : CDVPlugin {
    
    NSString *_callback;
    UIImage *_image;
    NSString *_albumName;
    
}

- (void) CDVSaveImage:(CDVInvokedUrlCommand *)command;

//-(void)saveImage:(UIImage*)image toAlbum:(NSString*)albumName withCompletionBlock:(SaveImageCompletion)completionBlock;

//-(void)addAssetURL:(NSURL*)assetURL toAlbum:(NSString*)albumName withCompletionBlock:(SaveImageCompletion)completionBlock;

@end