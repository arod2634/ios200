#import "ViewController.h"
#import "IconSet.h"
#import "Icon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *icons;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  NSArray *iconSets = [IconSet iconSets];
  IconSet *set = (IconSet *)iconSets[1];
  self.icons = set.icons;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.icons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IconCell" forIndexPath:indexPath];
  /*UITableViewCell *cell;
    
  if (indexPath.row % 2) {
      // Create the cell (based on prototype)
      cell = [tableView dequeueReusableCellWithIdentifier:@"IconCell" forIndexPath:indexPath];
      //cell.backgroundColor = [[UIColor alloc]initWithRed:87.0/255.0 green:84.0/255.0 blue:229.0/255.0 alpha:1];
  } else {
      cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
  }
  */
    
  // Configure the cell
  Icon *icon = self.icons[indexPath.row];
  cell.textLabel.text = icon.title;
  cell.detailTextLabel.text = icon.subtitle;
  cell.imageView.image = icon.image;
  
  return cell;  
}

/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    int selectedRow = indexPath.row;
    NSLog(@"touch on row %d", selectedRow);
}
*/

@end
