//
//  Circle.m
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import "Circle.h"

@implementation Circle

- (instancetype)initCircle:(NSInteger)radius {
    self = [super init];
    if(self){
        _radius = radius;
    }
    return self;
}


 
- (NSInteger)getPerimeter {
    NSInteger perimetr = _radius*2*3.14;
    return perimetr;
}

- (NSInteger)getSurface {
    NSInteger Surface = (_radius*_radius)*3.14;
    return Surface;
}

- (void)informationAboutFigure  {
    NSInteger perimetr = [self getPerimeter];
    NSInteger surface = [self getSurface];
    NSLog(@"Радиус круга: %i" , _radius);
    NSLog(@"Круг Периметр: %i\n Круг Площадь %i", perimetr, surface);
}

@end
