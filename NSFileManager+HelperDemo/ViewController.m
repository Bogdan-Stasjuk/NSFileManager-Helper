//
//  ViewController.m
//  BSFileManagerDemo
//
//  Created by Bogdan Stasjuk on 6/14/15.
//  Copyright © 2015 Bogdan Stasjuk. All rights reserved.
//

#import "ViewController.h"

#import "NSFileManager+Helper.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  NSLog(@"Temporary URL: %@", [NSFileManager getTmpURLWithFilename:@"test.ext"]);

  NSString *filename = @"test2.ext2";
  NSString *pathToFile = [NSTemporaryDirectory() stringByAppendingPathComponent:filename];
  if ([NSFileManager createFile:pathToFile]) {
    NSLog(@"File was created at path: %@", pathToFile);
  } else {
    return;
  }

  NSString *someInfo = @"One\nTwo\nThree\nFour\nFive";
  NSError *error;
  if (![someInfo writeToFile:pathToFile atomically:YES encoding:NSUTF8StringEncoding error:&error]) {
    NSLog(@"[%@ writeToFile:%@ atomically:YES encoding:NSUTF8StringEncoding error:%@]", someInfo, pathToFile, error);

    return;
  }

  NSLog(@"File size: %llu", [NSFileManager fileSize:pathToFile]);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
