//
//  Robot.m
//  Lesson4_Hw4
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import "Robot.h"

@implementation Robot

-(void) Run: (NSString*(^)(void)) block {
    
    NSString *way = block();
    
    if ([way isEqualToString: @"up"]) {
        y=y + 1;
        NSLog(@"Координата Х: %i", x);
        NSLog(@"Координата Y: %i", y);
        return;
    }else if ([way isEqualToString: @"down"]){
        y=y - 1;
        NSLog(@"Координата Х: %i", x);
        NSLog(@"Координата Y: %i", y);
        return;
    }else if ([way isEqualToString: @"left"]){
        x=x - 1;
        NSLog(@"Координата Х: %i", x);
        NSLog(@"Координата Y: %i", y);
        return;
    }else if ([way isEqualToString: @"right"]){
        x=x + 1;
        NSLog(@"Координата Х: %i", x);
        NSLog(@"Координата Y: %i", y);
        return;
    }
}

@end
