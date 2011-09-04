//
//  threetableViewController.m
//  threetable
//
//  Created by Eknath Kadam on 7/29/11.
//  Copyright 2011 Webrich Software. All rights reserved.
//

#import "threetableViewController.h"

@implementation ThreeTableViewController
@synthesize first;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if(self==[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
        
      UIButton*  aboutButton=[UIButton buttonWithType: UIButtonTypeInfoDark];		
		[aboutButton addTarget:self action:@selector(showAboutView) forControlEvents:(UIControlEventTouchDown )];
		
		UIBarButtonItem *aboutButtonBarItem;
		aboutButtonBarItem=[[UIBarButtonItem alloc] initWithCustomView:aboutButton];
		
		[self.navigationItem setRightBarButtonItem:aboutButtonBarItem animated:YES];
		[aboutButtonBarItem release];
        
		
		
		UIButton *settingsButton=[UIButton buttonWithType:UIButtonTypeContactAdd];
		[settingsButton addTarget:self action:@selector(changeSettings) forControlEvents:(UIControlEventTouchDown )];
		
		UIBarButtonItem *settingsItem;
		settingsItem=[[UIBarButtonItem alloc] initWithCustomView:settingsButton];
		[settingsItem setTarget:self];
		[settingsItem setAction:@selector(changeSettings)];
		
		[self.navigationItem setLeftBarButtonItem:settingsItem animated:YES];
		[settingsItem release];

        
    }
    return self;
    
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text=[NSString stringWithFormat:@"Row Number: %d",indexPath.row];    
    return cell;
}



#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)loadView
{
 
    [super loadView];
  
    first=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    
    first.delegate=self;
    first.dataSource=self;
    first.autoresizingMask=UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight;
    
	[self.view addSubview:first];
    
    

}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
