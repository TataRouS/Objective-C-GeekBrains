//
//  SecondViewController.m
//  Lesson_5(2)
//
//  Created by Nata Kuznetsova on 02.11.2023.
//

#import "SecondViewController.h"
#import "Loader.h"


@interface SecondViewController ()


@property (strong, nonatomic) Loader *loader;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
}


- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

- (void)performLoadingWithPostRequest {
    [self.loader performPostURL:@"https://postman-echo.com/post"
                      agruments:@{@"foo1": self.text1.text, @"foo2": self.text2.text}
                          block:^(NSDictionary *dictionary, NSError * error) {
        NSLog(@"Post запрос: %@, %@", self.text1.text, self.text2.text);
             }];
         }

- (IBAction)submit:(id)sender {
    [self performLoadingWithPostRequest];
}


@end
