//
//  main.m
//  Lesson_1
//
//  Created by Nata Kuznetsova on 16.10.2023.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1. Решить квадратные уравнения x^2 – 8x + 12 = 0, 12x^2 – 4x + 2 = 0, x^2 – 100x - 2 = 0 (заменять константы в коде)
        //a * x^2 + b * x + c = 0
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
                NSLog(@"Корень 1: %f\nКорень    ит 2: %f", x1, x2);
            } else  if (d == 0) {
                CGFloat x1 = (-b - sqrt(d)) / 2 * a;
                NSLog(@"Корень уравнения: %f", x1);
            } else {
                printf("Уравнение не имеет корней");
            }
        } else {
            printf("По условию в квадратном уравнении константа 'а' не может равняться нулю\n");
        }
        
        //2. Создать программу, которая находит большое число среди 3-х чисел
        int k, l, m;
        printf("Введите первое число: ");
        scanf("%d", &k);
        printf("Введите второе число: ");
        scanf("%d", &l);
        printf("Введите третье число: ");
        scanf("%d", &m);
        
        if (k > l && k > m) {
            NSLog(@"Наибольшее число: %d", k);
        } else if (l > k && l > m) {
            NSLog(@"Наибольшее число: %d", l);
        }  else if (m > k && m > l) {
            NSLog(@"Наибольшее число: %d", m);
        } else {
            printf("Числа равны\n");
        }
    }
    return 0;
}
