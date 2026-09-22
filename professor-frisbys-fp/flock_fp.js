// -----------------------------
// lets try again with a more functional aproach

const conjoin = (flockX, flockY) => flockX + flockY;
const breed = (flockX, flockY) => flockX * flockY;

//const flockA = 4;
//const flockB = 2;
//const flockC = 0;

//const result = conjoin(flockA, breed(flockC, conjoin(flockB, breed(flockA, flockB))));
// mi version, result 4

//const result = conjoin(flockA, flockC) breed(flockA, flockB);
// mi version 2

//const result = flockA
//    .conjoin(flockC)
//    .breed(flockB)
//    .conjoin(flockA.breed(flockB))
//    .seaguls;

const result1 =
    conjoin(breed(flockB,	conjoin(flockA,	flockC)),	breed(flockA,	flockB));

//console.log(result);

// ----------------------------------------------------------------------
//Let's rename our custom functions	to multiply and add in order to	reveal their true identities.

const	add	=	(x,	y)	=>	x	+	y;
const	multiply	=	(x,	y)	=>	x	*	y;
const	flockA	=	4;
const	flockB	=	2;
const	flockC	=	0;
const	result	=
				add(multiply(flockB,	add(flockA,	flockC)),	multiply(flockA,	flockB));
//	16

// -----------------------------
// And	with	that,	we	gain	the	knowledge	of	the	ancients:

//	associative
add(add(x,	y),	z)	===	add(x,	add(y,	z));

//	commutative
add(x,	y)	===	add(y,	x);

//	identity
add(x,	0)	===	x;

//	distributive
multiply(x,	add(y,z))	===	add(multiply(x,	y),	multiply(x,	z))

// NOS QUEDAMOS INICIO PAGINA 14.