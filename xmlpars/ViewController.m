//
//  ViewController.m
//  xmlpars
//
//  Created by Student P_10 on 10/11/17.
//  Copyright © 2017 vaishnavifelix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _searchval = _searchtf.text;
    
    NSString *str = @"http://www.w3schools.com/xml/plant_catalog.xml";
    
    NSURL *url = [NSURL URLWithString:str];
    
    _plantarray = [[NSMutableArray alloc]init];
    
    _saxparser = [[NSXMLParser alloc]initWithContentsOfURL:url];
    
    _saxparser.delegate = self;
    
    [_saxparser parse];
    
    
    
}
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    _charstring = [[NSMutableString alloc]init];
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [_charstring appendString:string];
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    [_plantarray addObject:_charstring];
    NSLog(@"%@",_plantarray);
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)searchbutton:(id)sender {
    NSInteger p = _plantarray.count;
    
    for(int i = 0; i < p; i++)
    {
        
        
            NSString *str = _plantarray[i];
            NSLog(@"%@",str);
            
        i = i +8;
    }
}
@end
