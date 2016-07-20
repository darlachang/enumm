//
//  main.m
//  enumm
//
//  Created by Ming-Han Chang on 2016/3/20.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        enum month : unsigned int { jan = 1, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec};
        enum month amonth;
        int days;
        
        typedef enum {east, west, south, north } direction;
        direction orientation1, orientation2;
        typedef int counter;
        counter value1, value2;

        NSLog (@"Enter month number");
        scanf ("%i", &amonth);
        
        switch (amonth)
        {
            case jan:
            case mar:
            case may:
            case jul:
            case aug:
            case oct:
            case dec:
                days = 31;
                break;
            
            case apr:
            case jun:
            case sep:
            case nov:
                days = 30;
                break;
            
            case feb:
                days = 28;
                break;
            }
        
        if (days != 0)
            NSLog (@"num of days is %i", days);
        

            
    }
    return 0;
}
