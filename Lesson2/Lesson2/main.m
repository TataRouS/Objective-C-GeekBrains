//
//  main.m
//  Lesson2
//
//  Created by Nata Kuznetsova on 17.10.2023.

//Создать абстрактный класс Figure с методами вычисления площади и периметра, а также методом, выводящим информацию о фигуре на экран.
//Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) со своими методами вычисления площади и периметра.
//Создать массив n-фигур и вывести полную информацию о фигурах на экран.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Figure.h"
#import "Triangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Figure *rectangle = [[Rectangle alloc] initRectangle: 2 sideB:4];
        
        [rectangle informationAboutFigure];
        
        Figure *triangle = [[Triangle alloc] initTriangle: 3 sideB:4 sideC:5];
        
        [triangle informationAboutFigure];
        
        Figure *circle = [[Circle alloc] initCircle:5];
        
        [circle informationAboutFigure];
        
        NSMutableArray *myArray = [NSMutableArray array];
        
        
        [myArray addObject: rectangle];
        [myArray addObject: triangle];
        [myArray addObject: circle];
        
        for(id object in myArray){
            [object informationAboutFigure];
        }
            
            
    }
    return 0;
}

