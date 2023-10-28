//
//  main.m
//  Lesson4_Hw4
//
//  Created by Nata Kuznetsova on 21.10.2023.
//
//Реализовать класс робота (Robot). В классе должны быть свойства координаты x, y (по умолчанию в начале 0, 0) и метод run. Метод принимает блок, в зависимости от сообщения в блоке (up, down, left, right) робот движется в соответствующем направлении (изменяется его текущая координата). Сообщения в блоках возвращается только в виде строк (up, down, left, right).
//Продемонстрировать движение робота по прямоугольной системе координат.

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSString *(^up)(void) = ^NSString *(void){
            return @"up";
        };
        
        NSString *(^down)(void) = ^NSString *(void){
            return @"down";
        };
        
        NSString *(^left)(void) = ^NSString *(void){
            return @"left";
        };
        
        NSString *(^right)(void) = ^NSString *(void){
            return @"right";
        };
        
        
        NSLog(@"Пример пути %@, %@, %@, %@", up(), up(), up(), right());
        Robot *newObject = [Robot new];
        
        [newObject Run:up];
        [newObject Run:left];
        [newObject Run:up];
        [newObject Run:up];
        [newObject Run:right];
        [newObject Run:right];
        [newObject Run:right];
    }
    return 0;
}
