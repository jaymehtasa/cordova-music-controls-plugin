 //
//  MusicControlsInfo.m
//  
//
//  Created by Juan Gonzalez on 12/17/16.
//
//

#import "MusicControlsInfo.h"

@implementation MusicControlsInfo : NSObject

- (id) initWithDictionary: (NSDictionary *) dictionary {
    
   if (self = [super init]) {
        [self setArtist: [dictionary objectForKey:@"artist"]];
        [self setTrack: [dictionary objectForKey:@"track"]];
        [self setAlbum: [dictionary objectForKey:@"album"]];
        [self setTicker: [dictionary objectForKey:@"ticker"]];
        [self setCover: [dictionary objectForKey:@"cover"]];
        if(![[dictionary valueForKey:@"duration"] isEqual:[NSNull null]] && [dictionary valueForKey:@"duration"] != nil){
            NSNumber *duration = [NSNumber numberWithInt:[[dictionary valueForKey:@"duration"]intValue]];
            [self setDuration: [duration intValue]];
        }
        if(![[dictionary valueForKey:@"elapsed"] isEqual:[NSNull null]] && [dictionary valueForKey:@"elapsed"] != nil){
            [self setElapsed: [[dictionary objectForKey:@"elapsed"] intValue]];
        }
        [self setIsPlaying: [[dictionary objectForKey:@"isPlaying"] boolValue]];
        [self setHasPrev: [[dictionary objectForKey:@"hasPrev"] boolValue]];
        [self setHasNext: [[dictionary objectForKey:@"hasNext"] boolValue]];
        [self setDismissable: [[dictionary objectForKey:@"dismissable"] boolValue]];
    }
    
    
    return self;
}

@end
