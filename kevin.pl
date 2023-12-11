naruto:-	writeln('Hola, soy el chatbot llamado Naruto, estoy aqui para darte informacion 
acerca de la tosferina y del anime Naruto:'),
	readln(Input),
	eliza(Input),!.
	%templates para despedida
	eliza(Input):- Input == ['bye'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.
	eliza(Input):- Input == ['bye', '.'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.
	eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.
    eliza(Input):- Input == ['adios', '.'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.
    eliza(Input):- Input == ['Adios'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.
    eliza(Input):- Input == ['adios'],
	writeln('Adios, espero haberte ayudado. Si necesitas algo mas, aqui estoy.'), !.

	eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

	
%templates para saludo

template(['hola', soy, s(_)], ['Hola', 0, 'en que puedo ayudarte'], [2]).
template(['Hola', soy, s(_)], ['Hola', 0, 'en que puedo ayudarte'], [2]).


%templates para naruto

template([quien, es, naruto, _],
[':Naruto Uzumaki es un ninja perteneciente a la aldea de la hoja
   Es el hijo del cuarto hogake, Minato Namikaze y Kushina Uzumaki,
   Su sueno es ser Hokage y ser muy poderoso.'],[]).

template([cual, es, el, mayor, sueno, de, naruto], 
	[': El sueno de Naruto es ser Hokage.'],[]).


template([de, que, trata, el, anime, naruto, _], 
	[':        Naruto sigue la historia de Naruto Uzumaki, un joven ninja
	 con el sueno de convertirse en el Hokage, el lider de su aldea,
	 la Aldea Oculta de la Hoja '],[]).


template([cuales, son, los, personajes, principales, de, naruto, _], 
	[':
	1.- naruto, hijo del cuarto hokage, llamado minato namikaze,
	2.- sasuke, del clan uchiha, mejor amigo de naruto,
	3.- sakura haruno, amiga de naruto y pareja de sasuke,
	4.- hinata hyuga, pareja de naruto,
	5.- kakashi hatake, maestro de naruto, sasuke y sakura'],[]).
	template([cuales, son, los, personajes, principales, en, naruto, _], 
	[':
	1.- naruto, hijo del cuarto hokage, llamado minato namikaze,
	2.- sasuke, del clan uchiha, mejor amigo de naruto,
	3.- sakura haruno, amiga de naruto y pareja de sasuke,
	4.- hinata hyuga, pareja de naruto,
	5.- kakashi hatake, maestro de naruto, sasuke y sakura'],[]).

	template([quienes, son, los, personajes, principales, en, naruto, _], 
	[':
	1.- naruto, hijo del cuarto hokage, llamado minato namikaze,
	2.- sasuke, del clan uchiha, mejor amigo de naruto,
	3.- sakura haruno, amiga de naruto y pareja de sasuke,
	4.- hinata hyuga, pareja de naruto,
	5.- kakashi hatake, maestro de naruto, sasuke y sakura'],[]).

	template([quienes, son, los, personajes, principales, de, naruto, _], 
	[':
	1.- naruto, hijo del cuarto hokage, llamado minato namikaze,
	2.- sasuke, del clan uchiha, mejor amigo de naruto,
	3.- sakura haruno, amiga de naruto y pareja de sasuke,
	4.- hinata hyuga, pareja de naruto,
	5.- kakashi hatake, maestro de naruto, sasuke y sakura'],[]).

	template([cuales, son, los, poderes, mas, fuertes, del, anime, _], 
	[':
	- rasengan, jutsu creado por minato namikaze y mejorado despues por su hijo naruto
	- chidori, jutsu creado por kakashi hatake, despues mejorado por sasuke, su aprendiz
	- susanoo, jutsu especial de los uchiha, usando escencialmente su mangekyo sharingan
	- jutsu multiclones de sombra, jutsu prohibido creado por el 2o hokage, tobirama senju
	- edo tensei, jutsu de reanimacion, revive a los muertos, creado por tobirama senju y
	   mejorado por orochimaru'],[]).

template([quienes, son, los, padres, de, naruto, _], 
	[': minato namikaze y kushina uzumaki'],[]).

	template([cual, es, el, apellido, de, naruto, _], 
	[': el apellido de naruto es: uzumaki'],[]).

template([como, se, llama, el, hijo, de, naruto, y, hinata, _], 
	[': su nombre es: boruto uzumaki'],[]).

template([como, se, llama, la, hija, de, naruto, y, hinata, _], 
	[': su nombre es: himawari uzumaki'],[]).

template([quienes, conforman, al, equipo, 7, liderado, por, kakashi, hatake, _], 
	[': el equipo 7 esta conformado por: naruto uzumaki, sasuke uchiha y sakura haruno'],[]).


template([cuales, tipos, de, dojutsu, existen, en, el, anime, _],
 [': Existe una gran variedad de dojutsus dentro del anime, sin embargo
     los mas conocidos, usados e importantes son:
	 1. Sharingan
	 2. Rinnegan
	 3. Jogan
	 4. Byakugan
	 5. Tenseigan.'],[]).

template([a, que, clan, pertenece, el, dojutsu, llamado, sharingan, _],
[': el sharingan pertenece al clan uchiha'],[]).

template([a, que, clan, pertenece, el, dojutsu, llamado, byakugan, _],
[': el byakugan pertenece al clan hyuga'],[]).

template([a, que, clan, pertenece, el, dojutsu, llamado, rinnegan, _],
[': el rinnegan pertenece principalmente al clan otsutsuki, pero al pasar los
    episodios, muchos usuarios llegan a portarlo'],[]).

template([a, que, clan, pertenece, el, dojutsu, llamado, tenseigan, _],
[': el tenseigan pertenece al clan otsutsuki '],[]).

template([quien, es, el, creador, del, anime, _],
[': El creador del anime Nauto es: Masashi Kishimoto.'],[]).

template([cuales, son, los, nombres, de, las, 9, bestias, con, cola, _],
[': Sus nombres son:
1. Shukaku, bijuu de una cola, sellado dentro de Gaara
2. Matatabi, bijuu de 2 colas, sellado dentro de Yugito Nii
3. Isobu, bijuu de 3 colas, sellado dentro de Yagura Karatachi, después en Rin Nohara
4. Son Goku, bijuu de 4 colas, sellado dentro de Roshi
5. Kokuo, bijuu de 5 colas, sellado dentro de Han
6. Saiken, bijuu de 6 colas, sellado dentro de Utakata
7. Chomei, bijuu de 7 colas, sellado dentro de Fu
8. Gyuki, bijuu de 8 colas, sellado dentro de Killer Bee
9. Kurama, bijuu de 9 colas, sellado dentro de Naruto'],[]).

%TOSFERINA

%templates para sintomas
template([los, sintomas, s(_), s(_), y, s(_), son, de, tosferina, '?'], [flagSin3], [2, 3, 5]).
template([tengo, s(_), y, s(_), _], [flagSin2], [1, 3]).
template([me, siento, con, s(_), _], [flagSin], [3]).
template([tengo, s(_), _], [flagSin], [1]).



%que es la tosferina

template([que, es, la, tosferina, _], 
	[': 
La tosferina, tambien conocida como tos convulsa, es una infeccion respiratoria
altamente contagiosa causada por la bacteria Bordetella pertussis. Esta enfermedad
afecta principalmente las vias respiratorias y puede provocar episodios de tos intensa
y paroxistica (en ataques) que se caracterizan por una serie de tos rapida e incontrolable,
seguida a menudo por un sonido agudo al inhalar, conocido como "gallo". 
La tosferina es particularmente grave en bebes y niños pequenos, y puede tener 
complicaciones mas serias en este grupo de edad.'],[]).



%listado de tratamiento

template([puedes, decirme, que, tratamiento, puedo, tomar, para, s(_), _], [flagTra], [7]).


%pregunta sobre doctor
template([si, tengo, s(_), con, que, doctor, o, especialista, debo, de, ir, _], [flagDoc], [2]).


% templates para preguntas sin respuestas
template(_, ['No entiendo, por favor', explica, un, poco, mas, '.'], []).



%sintomas: flagSin
elizaSin(X, R):- sintomas(X, Y), R = ['Bueno', si, tienes, X, puede, que, tengas, Y, 'Si', tienes, algun, otro, sintoma, comentamelo].
elizaSin(X, R):- \+sintomas(X, Y), R = [lo, siento, pero, no, tengo, conocimiento, sobre, X, en, mi, base, de, conocimientos].
sintomas(vomito, tosferina).
sintomas(tos, tosferina).
sintomas(catarro, tosferina).
sintomas(fiebre, tosferina).

%sintomas2: flagSin2
elizaSin2(X, Y, R):- sintomas2(X, Y), R = [si, tienes, esos, dos, sintomas, puede, que, tengas, tosferina, 'Si', tienes, algun, otro, sintoma, comentamelo].
elizaSin2(X, Y, R):- \+sintomas2(X, Y), R = ['Lo', siento, pero, no, tengo, conocimiento, sobre, esos, sintomas, en, mi, base, de, conocimientos].

sintomas2(vomito, catarro).
sintomas2(vomito, fiebre).
sintomas2(vomito, tos).

sintomas2(catarro, vomito).
sintomas2(catarro, tos).
sintomas2(catarro, fiebre).

sintomas2(fiebre, tos).
sintomas2(fiebre, vomito).
sintomas2(fiebre, catarro).

sintomas2(tos, fiebre).
sintomas2(tos, vomito).
sintomas2(tos, catarro).

%sintomas3: flagSin3

elizaSin3(X, Y, Z, R):- sintomas3(X, Y, Z), R = [con, esos, 3, sintomas, 'Si', es, probable, que, sea, tosferina].
elizaSin3(X, Y, Z, R):- \+sintomas3(X, Y, Z), R = [con, esos, 3, sintomas, 'No', es, problable, que, sea, tosferina].

sintomas3(vomito, catarro, tos).
sintomas3(vomito, catarro, fiebre).

sintomas3(tos, vomito, catarro).
sintomas3(tos, vomito, fiebre).

sintomas3(catarro, tos, fiebre).
sintomas3(catarro, fiebre, tos).

sintomas3(fiebre, tos, catarro).
sintomas3(fiebre, tos, vomito).




%doctores: flagDoc
elizaDoc(Y, R):- medico(X,Y), R = ['Bueno', debes, de, ir, con, un, X, ya, que, tienes, Y, 'Si', tienes, algun, otro, sintoma, comentamelo].
elizaDoc(X, R):- \+medico(X,_), R = ['Lo', siento, pero, no, tengo, conocimiento, sobre, que, doctor, ve, la, enfermedad, de, X, en, mi, base, de, conocimientos].
medico(medico_Infectologo, tosferina).



%tratamientos flagTra
elizaTra(X, R):- tratamiento(Y,X), R = ['El', tratamiento, que, se,recomienda, para, X, es, ':', Y, 'Si', tienes, otra, consulta, o, pregunta, que, puedo, contestar, dejamelo, saber].
elizaTra(X, R):- \+tratamiento(_,X), R = ['Lo', siento, pero, no, tengo, conocimiento, sobre, el, tratamiento, de, X, recuerda, que, soy, un, chatbot, con, poco, conocimiento].

tratamiento(antibioticos_vacunacion_hospitalizacion_y_mucho_reposo,tosferina).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.


% Eliza sintomas:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X, Y),
	X == flagSin,
	Y=Y,
	elizaSin(Atom, R).

% Eliza sintomas2
replace0([I,J|_], Input, _, Resp, R):-
nth0(I, Input, Atom),
nth0(0, Resp, X),
X == flagSin2,
nth0(J, Input, Atom1),
nth0(0, Resp, Y),
Y == flagSin2,
elizaSin2(Atom, Atom1, R).

% Eliza sintomas3
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSin3,
	nth0(J, Input, Atom1),
	nth0(0, Resp, Y),
	Y == flagSin3,
	nth0(K, Input, Atom2),
	nth0(0, Resp, Z),
	Z == flagSin3,
	elizaSin3(Atom, Atom1, Atom2, R).


% Eliza doctores:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, Y, X),
	Y== flagDoc,
	X=X,
	elizaDoc(Atom, R).


% Eliza lista de tratamientos:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X, Y),
	X == flagTra,
	Y=Y,
	elizaTra(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.
