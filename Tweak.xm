#include <Preferences/PSListController.h>
#import <RemoteLog.h>

@interface PSGGeneralController : PSListController
@end

@interface PSGResetPrefController : PSListController
@end

%hook PSGGeneralController
-(void)viewWillAppear:(BOOL)arg1 {
	%orig;
	[self removeSpecifierID:@"SOFTWARE_UPDATE_LINK" animated:NO];
}

/*- (PSTableCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	PSTableCell *cell = %orig;
	RLog(@"%@", cell.specifier.identifier);
	return cell;	
}*/
%end

%hook PSGResetPrefController
-(void)viewWillAppear:(BOOL)arg1 {
	%orig;
	[self removeSpecifierID:@"fullErase" animated:NO];
}

/*- (PSTableCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	PSTableCell *cell = %orig;
	RLog(@"%@", cell.specifier.identifier);
	return cell;	
}*/
%end
