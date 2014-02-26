//
//  LetraViewController.m
//  Navigation
//
//  Created by Wesley Scardua on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "NavigationStore.h"

@interface LetraViewController ()

@end

@implementation LetraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NavigationStore *instancia;
    instancia = [NavigationStore sharedInstancia];
    //self.title = [[NSString alloc] initWithFormat:@"%c", (65 + instancia.posicao)];
   // NSArray *chaves = [[instancia objetos] allKeys];
    NSArray *chaves = [[[NavigationStore sharedInstancia] objetos] allKeys];
    NSArray *chavesOrdenadas = [chaves sortedArrayUsingComparator:^NSComparisonResult(id a, id b) { NSString *chave1 = (NSString *) a; NSString*chave2 = (NSString *)b; return [chave1 compare:chave2]; }];
    NSLog(@"%@", chaves);
    self.title = [chavesOrdenadas objectAtIndex:instancia.posicao];
    //self.imagem.image = [UIImage imageNamed:@"alavanca"];
    self.imagem.image = [[[[NavigationStore sharedInstancia] objetos] objectForKey:self.title] objectAtIndex:1];
    self.nome.text = [[[[NavigationStore sharedInstancia] objetos] objectForKey:self.title] objectAtIndex:0];
    [self.nome sizeToFit];
    UIBarButtonItem *prox = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximo)];
    self.navigationItem.rightBarButtonItem = prox;
    UIBarButtonItem *ant = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(anterior)];
    self.navigationItem.leftBarButtonItem = ant;
    NSMutableArray *atual = [[NSMutableArray alloc] init];
    [atual addObject:self];
    self.navigationController.viewControllers = atual;
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) proximo {
    NSLog(@"Inicializando");
    NavigationStore *instancia = [NavigationStore sharedInstancia];
    [instancia atualiza: true];
    LetraViewController *prox = [[LetraViewController alloc] initWithNibName:@"LetraView" bundle:nil];
    [self.navigationController pushViewController:prox animated:YES];
}

- (void) anterior {
    NavigationStore *instancia = [NavigationStore sharedInstancia];
    [instancia atualiza: false];
    LetraViewController *prox = [[LetraViewController alloc] initWithNibName:@"LetraView" bundle:nil];
    [self.navigationController pushViewController:prox animated:YES];
    
}

@end
