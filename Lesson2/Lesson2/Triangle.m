//
//  Triangle.m
//  Lesson2
//
//  Created by Nata Kuznetsova on 20.10.2023.
//

#import "Triangle.h"

@implementation Triangle

- (instancetype)initTriangle: (NSInteger) sideA {
    self = [super init];
    if(self){
        _sideA = sideA;
        _sideB = 0;
        _sideC = 0;
    }
    return self;
}

- (instancetype)initTriangle: (NSInteger) sideA sideB: (NSInteger) sideB {
    self = [super init];
    if(self){
        _sideA = sideA;
        _sideB = sideB;
        _sideC = 0;
    }
    return self;
}

- (instancetype)initTriangle:(NSInteger)sideA sideB:(NSInteger)sideB sideC:(NSInteger)sideC {
    self = [super init];
    if(self){
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
    }
    return self;
}

 
- (NSInteger)getPerimeter {
    NSInteger perimetr = (_sideA + _sideB + _sideC);
    return perimetr;
}

- (NSInteger)getSurface {
    NSInteger p = (_sideA + _sideB + _sideC)/2;
    NSInteger Surface = sqrt(p*(p-_sideA)*(p-_sideB)*(p-_sideC));
    return Surface;
}

- (void)informationAboutFigure  {
    NSInteger perimetr = [self getPerimeter];
    NSInteger surface = [self getSurface];
    NSLog(@"Треугольник Сторона А: %i\n Треугольник Сторона В: %i\n Треугольник Сторона C: %i", _sideA, _sideB, _sideC);
    NSLog(@"Треугольник Периметр: %i\n Треугольник Площадь %i", perimetr, surface);
}


@end
