[user].
hombre('Alex').
hombre('Carlos').
hombre('Arturo').
hombre('Marcos').
hombre('Rogelio').
hombre('Edward').
hombre('Julian').
hombre('Camilo').
hombre('Robin').

mujer('Edna').
mujer('Carmen').
mujer('Gloria').
mujer('Sandra').
mujer('Cristina').
mujer('Yaneth').
mujer('Kathy').
mujer('Andrea').
mujer('Luisa').
mujer('Sara').

padre('Arturo','Alex').
padre('Edna','Alex').
padre('Arturo','Robin').
padre('Edna','Robin').

padre('Marcos','Yaneth').
padre('Carmen','Yaneth').
padre('Marcos','Kathy').
padre('Carmen','Kathy').
padre('Marcos','Cristina').
padre('Carmen','Cristina').

padre('Alex','Carlos').
padre('Yaneth','Carlos').

padre('Kathy','Edward').
padre('Kathy','Julian').

padre('Rogelio','Andrea').

padre('Gloria','Luisa').
padre('Sandra','Luisa').

padre('Andrea','Sara').
padre('Luisa','Sara').

padre('Carlos','Camilo').
padre('Sara','Camilo').

hijo(x,y):- padre(y,x).
casado(x, y):- padre(x,z), padre(y,z).
hermano(x,y):- padre(p,x), padre(p,y), x\==y.
nieto(x,y):- padre(z,x),padre(y,z), x\==y.
abuelo(x,y):- nieto(z,x).
bisabuelo(x,y):- padre(x,z), abuelo(z,y).
bisnieto(x,y):- bisabuelo(y,x).
cuniado(x,y):- casado(x,z), hermano(z,y).
