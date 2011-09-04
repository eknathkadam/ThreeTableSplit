//
//  threetableViewController.h
//  threetable
//
//  Created by Eknath Kadam on 7/29/11.
//  Copyright 2011 Webrich Software. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThreeTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>


@property(nonatomic,retain) UITableView *first;


@end
