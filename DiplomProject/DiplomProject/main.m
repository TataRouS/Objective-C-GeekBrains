//
//  main.m
//  DiplomProject
//
//  Created by Nata Kuznetsova on 04.11.2023.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a, b, c, d;
        
        printf("Введите константу a: ");
        scanf("%d", &a);
        printf("Введите константу b: ");
        scanf("%d", &b);
        printf("Введите константу c: ");
        scanf("%d", &c);
        
        d = b * b - 4 * a * c;
        
        if (a != 0) {
            if (d > 0) {
                CGFloat x1 = (-b - sqrt(d)) / 2 * a;
                CGFloat x2 = (-b + sqrt(d)) / 2 * a;
                NSLog(@"Корень 1: %f\nКорень    и 2: %f", x1, x2);
            } else  if (d == 0) {
                CGFloat x1 = (-b - sqrt(d)) / 2 * a;
                NSLog(@"Корень уравнения: %f", x1);
            } else {
                printf("Уравнение не имеет корней");
            }
        } else {
            printf("По условию в квадратном уравнении константа 'а' не может равняться нулю\n");
        }
    }
}
