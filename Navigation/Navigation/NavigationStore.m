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
        
        [nomes addObject:@"Alavanca"];
        [nomes addObject:@"Baleia"];
        [nomes addObject:@"Cadeira"];
        [nomes addObject:@"Dado"];
        [nomes addObject:@"Escada"];
        [nomes addObject:@"Folha"];
        [nomes addObject:@"Garrafa"];
        [nomes addObject:@"Helicópitero"];
        [nomes addObject:@"Imã"];
        [nomes addObject:@"Janela"];
        [nomes addObject:@"Kibe"];
        [nomes addObject:@"Livro"];
        [nomes addObject:@"Mola"];
        [nomes addObject:@"Navio"];
        [nomes addObject:@"Óculos"];
        [nomes addObject:@"Prato"];
        [nomes addObject:@"Quadrado"];
        [nomes addObject:@"Relógio"];
        [nomes addObject:@"Sombra"];
        [nomes addObject:@"Telefone"];
        [nomes addObject:@"Urso"];
        [nomes addObject:@"Vassoura"];
        [nomes addObject:@"Wally"];
        [nomes addObject:@"Xícara"];
        [nomes addObject:@"Yeti"];
        [nomes addObject:@"Zarabatana"];
    }
    return self;
}

- (NSMutableDictionary *) inicializaDicionario {
    for (NSString *palavra in nomes) {
        NSMutableArray *aux = [[NSMutableArray alloc] initWithCapacity:2];
        UIImage *imagem = [UIImage imageNamed:palavra];
        
    }
    return objetos;
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
