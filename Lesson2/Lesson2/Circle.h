//
//  Circle.h
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure {

@private NSInteger _radius;
}

- (instancetype) initCircle: (NSInteger) radius;


@end

NS_ASSUME_NONNULL_END
