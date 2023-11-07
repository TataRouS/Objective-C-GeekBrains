//
//  ViewController.m
//  Lesson_5(2)
//
//  Created by Nata Kuznetsova on 24.10.2023.
//

#import "ViewController.h"
#import "Loader.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) Loader *loader;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self performLoadingWithGetRequest];
}

-(void)performLoadingWithGetRequest {
    [self.loader performGetforURL:@"https://postman-echo.com/get"
                 agruments:@{@"foo1": @"bar1", @"foo2": @"bar2"}
                     block:^(NSDictionary *dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error){
                self.textView.text = [NSString stringWithFormat:@"Error: %@", error];
                return;
            }
            self.textView.text = [NSString stringWithFormat:@"%@", dictionary];
        });
    }];
}

- (void)performLoadingWithPostRequest {
    [self.loader performPostURL:@"https://postman-echo.com/post"
                      agruments:@{@"foo1": @"bar1", @"foo2": @"bar2"}
                          block:^(NSDictionary *dictionary, NSError * error) {
             dispatch_async(dispatch_get_main_queue(), ^{
                 if (error){
                     self.textView.text = [NSString stringWithFormat:@"Error: %@", error];
                     return;
                 }
                     self.textView.text = [NSString stringWithFormat:@"%@", dictionary];
                 });
             }];
         }

@end
