    //
//  mainviewcontrolelr.m
//  threetable
//
//  Created by Eknath Kadam on 7/30/11.
//  Copyright 2011 Webrich Software. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];
	
	ThreeTableViewController *t = [[ThreeTableViewController alloc] initWithNibName:nil bundle:nil];
    t.view.backgroundColor=[UIColor greenColor];
    t.title=@"The Title One";
    
    UINavigationController *n1 = [[UINavigationController alloc] initWithRootViewController:t];
    [n1.view setFrame: CGRectMake(0, 0, self.view.bounds.size.width/3,self.view.bounds.size.height)];
    n1.view.autoresizingMask=UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight;

    ThreeTableViewController *t2 = [[ThreeTableViewController alloc] initWithNibName:nil bundle:nil];
    t2.view.backgroundColor=[UIColor redColor];
    t2.title=@"The Title Two";
    
    UINavigationController *n2 = [[UINavigationController alloc] initWithRootViewController:t2];
    [n2.view setFrame: CGRectMake(self.view.bounds.size.width/3, 0, self.view.bounds.size.width/3,self.view.bounds.size.height)];
    n2.view.autoresizingMask=UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight;

    
    ThreeTableViewController *t3 = [[ThreeTableViewController alloc] initWithNibName:nil bundle:nil];
    t3.view.backgroundColor=[UIColor purpleColor];
    t3.title=@"The Title Three";

    UINavigationController *n3 = [[UINavigationController alloc] initWithRootViewController:t3];
    [n3.view setFrame: CGRectMake((self.view.bounds.size.width/3)*2, 0, self.view.bounds.size.width/3,self.view.bounds.size.height)];
    n3.view.autoresizingMask=UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight;

    
	[self.view addSubview:n1.view ];
	[self.view addSubview:n2.view ];
	[self.view addSubview:n3.view ];

}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
