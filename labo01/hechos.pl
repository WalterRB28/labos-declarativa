personaje(eric).
personaje(timmy).
personaje(kelvin).
personaje(virginia).

rol(eric, protagonista).
rol(kelvin, aliado_capturado).
rol(virginia, mutante).
edad(eric, 30).
no_habla(kelvin).
puede_volverse_aliada(virginia).

objeto(hacha).
objeto(encendedor).
tiene(eric, hacha).
tiene(eric, encendedor).

habilidad(kelvin, cargar_troncos).
habilidad(kelvin, construir).
requiere_orden(kelvin, cargar_troncos).
requiere_orden(kelvin, construir).

zona(superficie).
zona(cuevas).
zona(bunkeres).
lugar(isla).
zona_de(superficie, isla).
zona_de(cuevas, isla).
zona_de(bunkeres, isla).

enemigo(canibal).
enemigo(mutante).
aparece_en(canibal, superficie).
aparece_en(mutante, superficie).
aparece_en(mutante, cuevas).
sin_enemigos(bunkeres).
requiere_para_abrir(bunkeres, llave).

% peligro: 1=bajo, 2=medio, 3=alto.
nivel_peligro(cuevas, cualquier_momento, 3).
nivel_peligro(superficie, dia, 2).
nivel_peligro(superficie, noche, 3).
nivel_peligro(bunkeres, cualquier_momento, 1).

necesita_para_sobrevivir(eric, refugio).
necesita_para_sobrevivir(eric, comida).
necesita_para_sobrevivir(eric, agua).

material(troncos).
material(piedras).
se_encuentra_en(troncos, superficie).
se_encuentra_en(piedras, superficie).
