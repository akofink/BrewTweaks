//
//  MainTableViewController.h
//  BrewTweaks
//
//  Created by Pamela Ocampo on 2/16/13.
//  Copyright (c) 2013 Pamela Ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BrewMethodDataController;

@interface MainTableViewController : UITableViewController
@property (strong, nonatomic) BrewMethodDataController *dataController;
@end
