//
//  Rectangle.m
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initRectangle: (NSInteger) sideA {
    self = [super init];
    if(self){
        _sideA = sideA;
        _sideB = 0;
    }
    return self;
}

- (instancetype)initRectangle: (NSInteger) sideA sideB: (NSInteger) sideB {
    self = [super init];
    if(self){
        _sideA = sideA;
        _sideB = sideB;
    }
    return self;
}

 
- (NSInteger)getPerimeter {
    NSInteger perimetr = (_sideA + _sideB)*2;
    return perimetr;
}

- (NSInteger)getSurface {
    NSInteger Surface = _sideA*_sideB;
    return Surface;
}

- (void)informationAboutFigure  {
    NSInteger perimetr = [self getPerimeter];
    NSInteger surface = [self getSurface];
    NSLog(@"Прямоугольник Сторона А: %i\n Прямоугольник Сторона В: %i", _sideA, _sideB);
    NSLog(@"Прямоугольник Периметр: %i\n Прямоугольник Площадь %i", perimetr, surface);
}

@end
