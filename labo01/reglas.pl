:- consult('hechos.pl').

% nivel 3 = peligro
zona_peligrosa(Zona, Momento) :-
    nivel_peligro(Zona, Momento, Nivel),
    Nivel >= 3.

% peligro en
amenaza_en(Zona, Enemigo) :-
    zona(Zona),
    enemigo(Enemigo),
    aparece_en(Enemigo, Zona).

% regla para kelvin
puede_ayudar_a_construir(Personaje) :-
    habilidad(Personaje, cargar_troncos),
    habilidad(Personaje, construir).

% no enemigos y no super nivel medio
zona_relativamente_segura(Zona, Momento) :-
    zona(Zona),
    ( sin_enemigos(Zona)
    ; nivel_peligro(Zona, Momento, Nivel), Nivel =< 2
    ).

% hay troncos y piedras?
material_de_construccion_en(Material, Zona) :-
    material(Material),
    se_encuentra_en(Material, Zona),
    (Material = troncos ; Material = piedras).

% hay personal y materiales apropiados
puede_construirse_refugio(Zona) :-
    puede_ayudar_a_construir(_),
    material_de_construccion_en(_, Zona).
