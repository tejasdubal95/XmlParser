//
//  ViewController.h
//  xmlpars
//
//  Created by Student P_10 on 10/11/17.
//  Copyright © 2017 vaishnavifelix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSXMLParserDelegate>
@property(nonatomic,retain)NSMutableString *charstring,*common;
@property(nonatomic,retain)NSMutableArray *plantarray,*commonarray;
@property(nonatomic,retain)NSXMLParser *parser;
@property(nonatomic,retain)NSXMLParser *saxparser;
@property (strong, nonatomic) IBOutlet UITextField *searchtf;
@property(nonatomic,retain)NSString *searchval;
- (IBAction)searchbutton:(id)sender;


@end

