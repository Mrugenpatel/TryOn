//
//  faceAPI.h
//  TryOn
//
//  Created by QiFeng on 7/28/15.
//  Copyright © 2015 QiFeng. All rights reserved.
//

#ifndef faceAPI_h
#define faceAPI_h
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "faceLandmarks.h"
#import "AFNetworking.h"
@interface faceAPI : NSObject

+(faceLandmarks *) uploadImage:(UIImage *)image;

@end
#endif /* faceAPI_h */
