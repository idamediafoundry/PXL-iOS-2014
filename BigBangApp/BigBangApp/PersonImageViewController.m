//
//  PersonImageViewController.m
//  BigBangApp
//
//  Created by Michael Seghers on 02/04/14.
//  Copyright (c) 2014 PXL. All rights reserved.
//

#import "PersonImageViewController.h"
#import "Person.h"
#import "DetailKeeper.h"

@interface PersonImageViewController () {
    __weak IBOutlet UIImageView *_imageView;
}

@end

@implementation PersonImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Person *selectedPerson = [DetailKeeper sharedDetailKeeper].selectedPerson;
    _imageView.image = [UIImage imageNamed:selectedPerson.imageName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
