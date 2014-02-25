//
//  NavigationStore.h
//  Navigation
//
//  Created by Wesley Scardua on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NavigationStore : NSObject{
    NSMutableArray *lista;
    NSMutableArray *nomes;
    int posicao;
}


@property NSMutableArray *lista;
@property NSMutableArray *nomes;
@property int posicao;
+ (NavigationStore *) sharedInstancia;

- (int) atualiza;

- (id)initX;

@end
