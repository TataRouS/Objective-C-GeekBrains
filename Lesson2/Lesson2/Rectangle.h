//
//  Rectangle.h
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure {
    
@private NSInteger _sideA;
@private NSInteger _sideB;
}

- (instancetype) initRectangle: (NSInteger) sideA;
- (instancetype) initRectangle: (NSInteger) sideA sideB: (NSInteger) sideB;

@end

NS_ASSUME_NONNULL_END
