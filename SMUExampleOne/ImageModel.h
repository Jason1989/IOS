//
//  ImageModel.h
//  SMUExampleOne
//
//  Created by Jian Guo on 8/26/18.
//  Copyright © 2018 Jian Guo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageModel : NSObject

@property (strong, nonatomic) NSArray* imageNames;

+(ImageModel*) sharedInstance;

-(UIImage*)getImageWithName:(NSString*)name;

@end
