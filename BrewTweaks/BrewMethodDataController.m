//
//  BrewMethodDataController.m
//  BrewTweaks
//
//  Created by Pamela Ocampo on 2/17/13.
//  Copyright (c) 2013 Pamela Ocampo. All rights reserved.
//

#import "BrewMethodDataController.h"
#import "BrewMethod.h"

@interface BrewMethodDataController()
    - (void)initializeDefaultDataList;
@end

@implementation BrewMethodDataController
-(void)initializeDefaultDataList{
    NSMutableArray *methodList = [[NSMutableArray alloc] init];
    NSMutableArray *grindTypes = [[NSMutableArray alloc] init];
    grindTypes[0] = @"Coarse";
    grindTypes[1] = @"Medium Coarse";
    grindTypes[2] = @"Medium";
    grindTypes[3] = @"Fine";    
    
    self.masterBrewMethodList = methodList;
    BrewMethod *method;
    
    method = [[BrewMethod alloc] initWithName:@"French Press" grind:grindTypes[0] coffeeAmount:28.0 waterAmount:392.0 temp:200.0];

    [self addBrewMethodWithBrewMethod:method];
    
    method = [[BrewMethod alloc] initWithName:@"Chemex" grind:grindTypes[2] coffeeAmount:28.0 waterAmount:490.0 temp:200.0];
    
    [self addBrewMethodWithBrewMethod:method];
    
    
    method = [[BrewMethod alloc] initWithName:@"AeroPress" grind:grindTypes[3] coffeeAmount:28.0 waterAmount:490.0 temp:200.0];
    
    [self addBrewMethodWithBrewMethod:method];
    
}
- (void)setMasterBrewMethodList:(NSMutableArray *)newList {
    if (_masterBrewMethodList != newList) {
        _masterBrewMethodList = [newList mutableCopy];
    }
}
- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}
- (NSUInteger)countOfList {
    return [self.masterBrewMethodList count];
}
- (BrewMethod *) objectInListAtIndex:(NSUInteger)theIndex{
    return [self.masterBrewMethodList objectAtIndex:theIndex];
}
-(void)addBrewMethodWithBrewMethod:(BrewMethod *)method{
    [self.masterBrewMethodList addObject:method];
}
@end
