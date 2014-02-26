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
        objetos = [[NSMutableDictionary alloc] init];
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
        [nomes addObject:@"Ovo"];
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
        [self inicializaDicionario];
    }
    return self;
}

- (NSMutableDictionary *) inicializaDicionario {
    NSLog(@"%@", objetos);
    for (NSString *palavra in nomes) {
        NSMutableArray *aux = [[NSMutableArray alloc] init];
        UIImage *imagem = [UIImage imageNamed:palavra];
        if (!imagem) {
            imagem = [UIImage imageNamed:@"alavanca"];
        }
        [aux addObject:palavra];
        [aux addObject:imagem];
        NSString *letra = [[NSString alloc] initWithFormat:@"%c", [palavra characterAtIndex:0] ] ;
        [objetos setObject:aux forKey:letra];
        //NSLog(@"%@", [objetos objectForKey:letra]);
    }
    return objetos;
}

- (int)atualiza: (bool) estado {
    
    if (estado) {
        posicao ++;
        if (posicao == 26) {
            posicao = 0;
        }
    }
    else{
        posicao--;
        if (posicao == -1) {
            posicao = 25;
        }
    }
    return posicao;
}

@end
