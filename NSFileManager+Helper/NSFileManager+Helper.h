//
//  NSFileManager+Helper.h
//
//  Created by Bogdan Stasjuk on 6/12/15.
//  Copyright (c) 2015 Bogdan Stasjuk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSFileManager (Helper)

+ (BOOL)createFile:(NSString *)filepath;
+ (unsigned long long)fileSize:(NSString *)path;

+ (NSURL *)getTmpURLWithFilename:(NSString *)filename;

@end
