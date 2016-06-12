
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "PizzaCell.h"
#import "Pizza.h"


@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: YES];
    
    self.pizzas = [[NSMutableArray alloc]init];
    
    Pizza* cap = [[Pizza alloc]init];
    cap.naziv = @"Kapricoza";
    cap.recept = @" 2kg brasna i puno ljubavi";
    [self.pizzas addObject:cap];
    
    Pizza* bakina = [[Pizza alloc]init];
    bakina.naziv = @"Bakina Pizza";
    bakina.recept = @" 2kg brasna i puno ljubavi";
    [self.pizzas addObject:bakina];
    
    
    
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.table reloadData];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [self.pizzas count];
    
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PizzaCell * cell = ((PizzaCell*)[tableView dequeueReusableCellWithIdentifier:@"pizzaCell"]);
    
    cell.nazivpice.text = ((Pizza*)[self.pizzas objectAtIndex:indexPath.row]).naziv;
    return cell;
    
}

@end
