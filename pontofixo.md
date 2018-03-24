# Código do Método do Ponto Fixo

```C
#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int SolucaoPontoFixo(double *x0, double p)
{	double x, dx, cont = 0;
	
	printf("%.10g\n", *x0);

	do
	{	x = cos(*x0);
		dx = fabs(x-*x0);
		*x0 = x;
		printf("%.10g\n", *x0);
		cont++;
	}while(dx>p);
	
	return cont;
}

void main(int argc, char **argv)
{	double x, x0, dx, prec;

	x0 = atof(argv[1]);
	prec = atof(argv[2]);
	
	printf("\nRaiz = %.10g em %d iterações\n", x0, SolucaoPontoFixo(&x0, prec));	
}
```

Esse método é usado para resolver equações da forma f(x) = 0. Primeiro reescrevemos a função f(x) como g(x) = x, e então criamos uma interseção entre o
gráfico da função g(x) que e a reta identidade, de modo que, para encontrar o valor de x da interseção, estimamos o primeiro valor de x e
substituimos em g(x). O valor de g(x) agora se torna a nossa segunda estimativa para x. Esse novo x é substituido em g(x), e assim por diante.
Então, x_{i+1} = g(x_{i}).

É possível, porém, que esses valores de x não convirjam. Além disso, o método encontra apenas uma solução da equação proposta (no caso de convergência).
Caso tenha mais de uma solução, é possível implementar modificações para que o método encontre todas elas.

#Resultados

Como mostram os gráficos, para os dois valores iniciais propostos há convergência para o ponto x tal que f(x) = x.
Os valores de x vão se aproximando de uma constante de forma que lembra muito com o gráfico do movimento de um oscilador harmônico sub-amortecido. Minhas 
tentativas de plotar envoltórias não deram certo, então deixei os gráficos como estavam. Como era esperado desse método, a diferença dos valores iniciais
causaram diferença no número de iterações, mesmo que pequena (10 iterações).

@thadeupenna
