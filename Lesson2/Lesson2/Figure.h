//
//  Figure.h
//  Lesson2
//
//  Created by Nata Kuznetsova on 17.10.2023.
//
//Создать абстрактный класс Figure с методами вычисления площади и периметра, а также методом, выводящим информацию о фигуре на экран.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Figure : NSObject

// MARK:-methods

-(NSInteger) getSurface;
-(NSInteger) getPerimeter;
-(void) informationAboutFigure;

@end

NS_ASSUME_NONNULL_END
