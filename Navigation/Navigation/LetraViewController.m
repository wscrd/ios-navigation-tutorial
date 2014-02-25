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
    self.title = [[NSString alloc] initWithFormat:@"%c", (65 + instancia.posicao)];
    self.imagem.image = [UIImage imageNamed:@"alavanca"];
    self.nome.text = @"Alavanca";
    [self.nome sizeToFit];
    UIBarButtonItem *prox = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximo)];
    self.navigationItem.rightBarButtonItem = prox;
	// Do any additional setup after loading the view.
    [instancia atualiza];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) proximo {
    LetraViewController *prox = [[LetraViewController alloc] initWithNibName:@"LetraView" bundle:nil];
    [self.navigationController pushViewController:prox animated:YES];
}

@end
