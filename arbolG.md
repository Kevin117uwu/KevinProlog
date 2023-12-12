# Documentación de Código en Prolog

El código en Prolog describe relaciones familiares entre distintos individuos. A continuación, se presenta una documentación detallada del código:

## Definiciones de Individuos del Arbol Genealogico

## Notas

- Las relaciones de pareja están representadas como "pareja(A, B)".
- Los hermanos están definidos con la regla "hermanode(A, B)".
- Los primos están definidos con la regla "primode(A, B)".


madre(emmma).
padre(mario).
hijo(mario2).
hijo(kevin).
hija(andrea).
padrede(mario, mario2).
padrede(mario, kevin).
padrede(mario, andrea).
madrede(emma, kevin).
madrede(emma, mario2).
madrede(emma, andrea).

### Hijos

% Hijos
hijo(kevin).
hijo(mario).
hijo(mario2).
hijo(oscar).
hijo(cesar).
hijo(javier).
hijo(jorge).
hijo(jose).
hijo(armando).
hijo(alejandro).
hijo(tiberio).
hijo(alfredo).
hijo(leonardo).
hijo(alex)

### Hijas

% hijas
hija(andrea).
hija(jazmin).
hija(martha).
hija(paola).
hija(tania).
hija(margarita).
hija(ana).
hija(elizabeth).
hija(alexa).
hija(regina).
hija(camila).
hija(guadalupe).
hija(ninfa).
hija(alejandra).
hija(marisol).
hija(alma).

## Relaciones Familiares

### Padres e Hijos

% padres
padrede(mario,kevin).
padrede(mario,mario2).
padrede(mario,andrea).
padrede(jorge,jazmin).
padrede(alejandro,alexa).
padrede(alejandro,regina).
padrede(armando,camila).
padrede(tiberio,cesar).
padrede(tiberio,oscar).
padrede(alfredo,ninfa).

### Madres e Hijos

% Madres
madrede(guadalupe,ninfa).
madrede(margarita,andrea).
madrede(margarita,kevin).
madrede(margarita,mario2).
madrede(margarita,armando).
madrede(margarita,alejandro).
madrede(elizabeth,alejandra).
madrede(elizabeth,leonardo).


### Primos


% Primos 
primode(kevin,oscar).
primode(kevin,cesar).
primode(kevin,jazmin).
primode(kevin,martha).
primode(mario2,oscar).
primode(mario2,cesar).
primode(mario2,jazmin).
primode(mario2,martha).
primode(alejandro,martha).
primode(alejandro,jazmin).
primode(oscar,andrea).
primode(cesar,andrea).

### Hermanos

% Hermanos
hermanode(kevin,mario2).
hermanode(kevin,alejandro).
hermanode(kevin,andrea).
hermanode(kevin,elizabeth).
hermanode(kevin,armando).
hermanode(cesar,oscar).
hermanode(jorge,jose).
hermanode(mario,kevin).
hermanode(mario,andrea).
hermanode(mario,alejandro).
hermanode(mario,elizabeth).
hermanode(mario,armando).

### Parejas


% Parejas
pareja(ninfa,kevin).
pareja(elizabeth,alex).
pareja(marisol,armando).
pareja(alma,jorge).