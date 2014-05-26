//
//  CDVXocializeImage.m
//  Xocialize
//
//  Created by Dustin Nielson on 5/26/14.
//
//  ALAssetsLibrary category to handle a custom photo album
//

#import "CDVXocializeImage.h"




@implementation CDVXocializeImage{
    
}

- (void) CDVSaveImage:(CDVInvokedUrlCommand *)command {
    
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    
    NSString* passedUrl = [command.arguments objectAtIndex:0];
    
    NSURL *url = [NSURL URLWithString:passedUrl];
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    
    [library writeImageToSavedPhotosAlbum:[image CGImage] orientation:(ALAssetOrientation)[image imageOrientation] completionBlock:^(NSURL *assetURL, NSError *error){
        if (error) {
            
            NSString* returnVal = @"failed";
            
            CDVPluginResult *pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:returnVal];
            
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            
        } else {
            
            NSString* returnVal = [assetURL absoluteString];
            
            CDVPluginResult *pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:returnVal];
            
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            
        }
    }];
    
    
}





@end
