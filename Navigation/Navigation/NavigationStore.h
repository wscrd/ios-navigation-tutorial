//
//  NavigationStore.h
//  Navigation
//
//  Created by Wesley Scardua on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NavigationStore : NSObject{
    NSMutableArray *nomes;
    NSMutableDictionary *objetos;
    int posicao;
}

@property NSMutableDictionary *objetos;
@property NSMutableArray *nomes;
@property int posicao;
+ (NavigationStore *) sharedInstancia;

- (int)atualiza: (bool) estado;

- (id)initX;

@end
