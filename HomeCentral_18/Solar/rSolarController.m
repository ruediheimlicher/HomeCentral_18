//
//  rSolarViewController.m
//  HomeCentral_18
//
//  Created by Ruedi Heimlicher on 05.10.2018.
//  Copyright © 2018 Ruedi Heimlicher. All rights reserved.
//

#import "rSolarController.h"

@interface rSolarController ()

@end

@implementation rSolarController

- (void)viewDidLoad 
{
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
   std=0;
   min=1;
   data=2;
   art =0;
   randlinks=10;
   randrechts=0;
   randunten = 10;
   randoben = 20;
   b = 24;
   intervally = 10;
   intervallx = 60;
   teile = 12;
   startwert =0;

   [self.diagrammtaste setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
   [self.diagrammtaste setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];

}


- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}


@end
