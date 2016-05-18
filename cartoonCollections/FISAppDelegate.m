//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *) dwarfs {
    NSMutableString *dwarfName = [[NSMutableString alloc]init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        NSInteger dwarfNumber = i + 1;
        [dwarfName appendFormat: @"%lu. %@", dwarfNumber, dwarfs [i]];
        if ( i < [dwarfs count] - 1) {
            [dwarfName appendString:@" | "];
        }
    }
    
    return dwarfName;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    NSMutableArray *newpowers = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *uppercasePowers = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString] ];
        [newpowers addObject:uppercasePowers];
    }
    
    
    return newpowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *) powers {
    NSMutableString *sPowers = [[NSMutableString alloc]init];
    [sPowers appendString:@"Let our powers combine:\n"];
    NSArray *powerShouts = [self arrayOfPlaneteerShoutsFromArray: powers];
    for (NSUInteger i = 0; i < [powerShouts count]; i++) {
        [sPowers appendFormat:@"%@\n", powerShouts[i]];
    } NSString *goPlanet = @"Go Planet!";
    [sPowers appendString:goPlanet];
    
    return sPowers;
}

- (NSString *)firstPremiumCheeseInStock: (NSArray *) cheeseInStock premiumCheeseNames: (NSArray *)premiumCheeseNames {
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *cheeseList = premiumCheeseNames[i];
        if ([premiumCheeseNames containsObject: cheeseInStock[i]]) {
            return cheeseList;
        }
        
        }
 return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    
    NSMutableArray *newMoneyBags = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        
        NSString *newMoney = moneyBags[i];
        NSUInteger length = [newMoney length];
        NSString *moneyInBill = [NSString stringWithFormat:@"$%lu", length];
        [newMoneyBags addObject: moneyInBill];
         
    }
    return newMoneyBags;
}


@end
