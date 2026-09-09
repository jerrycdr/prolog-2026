

// Fucniones para evaluar las condiciones
// const esCero = num => num === 0;
const esCero = n => n === 0; // recordar que esto ya produce un booleano
const esPositivo = n => n > 0;

//Fucnioens para evaluar el resultado
const evaluarNumero = n => {
    if (esCero(n)) {
        return "el numero es CERO";
    }

    if (esPositivo(n)) {
        return "el numero es POSITIVO (+)";
    } else {
        return "el numero es NEGATIVO (-)";
    }

}

console.log(evaluarNumero(-1));
console.log(evaluarNumero(0));
console.log(evaluarNumero(1));