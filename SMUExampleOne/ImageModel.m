//
//  ImageModel.m
//  SMUExampleOne
//
//  Created by Jian Guo on 8/26/18.
//  Copyright © 2018 Jian Guo. All rights reserved.
//

#import "ImageModel.h"

@implementation ImageModel

@synthesize imageNames = _imageNames;

-(NSArray*)imageNames {
    if(!_imageNames)
        _imageNames = @[@"Jason1", @"Jason2", @"Jason3"];
    return _imageNames;
}

+(ImageModel*) sharedInstance {
    static ImageModel * _sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    });
    
    return _sharedInstance;
}

-(UIImage*)getImageWithName:(NSString *)name{
    UIImage* image = nil;
    image = [UIImage imageNamed:name];
    return image;
}

@end
