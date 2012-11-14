//
//  main.m
//  MorseConverter
//
//  Created by neige7 on 12/11/14.
//  Copyright (c) 2012年 neige7. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
