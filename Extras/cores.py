import random as rd

class cores:
    
    def __init__(self):
        self.azul = '#0fcfff'
        self.laranja = '#ff7f0e'
        self.verde = '#2ca02c'
        self.vermelho = '#d62728'
        self.roxo = '#8a2be2'
        self.amarelo = '#ffd70f'
        self.rosa = '#ff00ff'
        self.ciano = '#44b6fc'
        self.marrom = '#bcbd22'
        self.cinza = '#9098a3'
        self.preto = '#000000'
        self.branco = '#ffffff'
        
    def gera_cores_aleatorias(self, quantidade):
        
        cores = []
        for i in range(quantidade):
            cores.append('#%06X' % rd.randint(0, 0xFFFFFF))
        return cores