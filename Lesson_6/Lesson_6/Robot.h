//
//  Robot.h
//  Lesson_6
//
//  Created by Nata Kuznetsova on 10.11.2023.
//

#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) NSString *name;

-(instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name;
@end
