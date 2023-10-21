//
//  Doctor.m
//  Lesson3_hw
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import "Doctor.h"

@implementation Doctor

- (void)preparePill {
    NSLog(@"Doctor preparing pill");
    [self.delegate takePill];
}

@end
