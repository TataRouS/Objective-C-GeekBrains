//
//  Robot.h
//  Lesson4_Hw4
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString * (^MyType)(void);

@interface Robot : NSObject

{
    NSInteger x;
    NSInteger y;
};

@property (nonatomic, nullable) NSString* (^moveBlock)(void);


-(void) Run: (NSString*(^)(void)) block;


@end

NS_ASSUME_NONNULL_END
