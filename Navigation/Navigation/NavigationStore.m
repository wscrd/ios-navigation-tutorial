//
//  NavigationStore.m
//  Navigation
//
//  Created by Wesley Scardua on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "NavigationStore.h"

@implementation NavigationStore

@synthesize nomes;
@synthesize posicao;
@synthesize objetos;

+(NavigationStore *)sharedInstancia {
    static NavigationStore *instancia = nil;
    if (!instancia) {
        instancia = [[super allocWithZone:nil] initX];
    }
    return instancia;
}

+(id) allocWithZone:(struct _NSZone *)zone {
    return [NavigationStore sharedInstancia];
}

- (id)initX {
    self = [super init];
    if (self) {
        nomes = [[NSMutableArray alloc] init];
        
        posicao = 0;
//        [nomes addObject:@"Alavanca"];
//        [nomes addObject:@"Baleia"];
//        [nomes addObject:@"Cadeira"];
    }
    return self;
}

- (int)atualiza: (bool) estado {
    if (estado) {
        posicao ++;
    }
    else
        posicao--;
    return posicao;
}

@end
