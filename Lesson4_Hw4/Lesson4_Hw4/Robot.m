//
//  Robot.m
//  Lesson4_Hw4
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import "Robot.h"

@implementation Robot

-(void) Run: (NSString*(^)(NSString*)) block {
    
    MyType step = block;
    NSString *up = @"up";
    NSString *down = @"down";
    NSString *left = @"left";
    NSString *right = @"right";
    
    if ([ isEqualToString: up]) {
        // false
    }
    
}

@end
