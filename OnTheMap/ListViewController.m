//
//  ListViewController.m
//  OnTheMap
//
//  Created by Kent Huang on 12/30/15.
//  Copyright © 2015 Kent Huang. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *posts;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.posts = [NSMutableArray arrayWithObjects: @"dog", @"cat", @"monkey", @"mouse", @"rabbit", @"giraffe", @"lion", @"tiger", @"rhino", @"hippo", nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier: @"tableViewCell" forIndexPath:indexPath];
    newCell.textLabel.text = self.posts[indexPath.row];
    return newCell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.posts.count;
}

@end
