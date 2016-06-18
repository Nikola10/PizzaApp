

#import "SecondViewController.h"
#import "FirstViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) viewWillAppear: (BOOL) animated {
    [super viewWillAppear:animated];
    
    NSLog(@"%@",self.pizza.naziv);
    NSLog(@"%@",self.pizza.recept);
    
    self.naslovLabel.text = self.pizza.naziv;
    self.sadrzajTextView.text = self.pizza.recept;
}
- (IBAction)back:(id)sender {
   FirstViewController *FirstVC = [self.storyboard instantiateViewControllerWithIdentifier: @"FirstViewController"];
    
    [self presentViewController: FirstVC animated:YES completion:nil];
}
@end
