//
//  Triangle.h
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure {

@private NSInteger _sideA;
@private NSInteger _sideB;
@private NSInteger _sideC;
    
}

- (instancetype) initTriangle: (NSInteger) sideA;
- (instancetype) initTriangle: (NSInteger) sideA sideB: (NSInteger) sideB;
- (instancetype) initTriangle: (NSInteger) sideA sideB: (NSInteger) sideB  sideC: (NSInteger) sideC;

@end

NS_ASSUME_NONNULL_END
