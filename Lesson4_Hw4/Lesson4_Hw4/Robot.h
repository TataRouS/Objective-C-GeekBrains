//
//  Robot.h
//  Lesson4_Hw4
//
//  Created by Nata Kuznetsova on 21.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString * (^MyType)(NSString *);

@interface Robot : NSObject

{
    NSInteger x;
    NSInteger y;
};

@property (nonatomic, nullable) NSString* (^moveBlock)(NSString*);


-(void) Run: (NSString*(^)(NSString*)) block;


@end

NS_ASSUME_NONNULL_END
