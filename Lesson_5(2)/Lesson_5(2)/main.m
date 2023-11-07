//
//  main.m
//  Lesson_5(2)
//
//  Created by Nata Kuznetsova on 24.10.2023.

//Задание
//На основе проекта из урока сделать мобильное приложение с двумя экранами:
//1. На первом экране приложения отображение GET-запроса в TextView элементе.
//2. На втором экране реализовать два TextField и одну Button. При нажатии на кнопку реализовать передачу данных по методу POST.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
