const numeros = [-2, -50, 70, 101, 2, 4, -6, -8, 0];

let positivos = 0;
let negativos = 0;
let total = 0;
let mayor = numeros[0]; // asumimos el maayor es el primero, como en jaava

for (let i = 0; i < numeros.length; i++) {
    let num = numeros[i];
    
    // Contar total
    total++;

    // Contar positivos y negativos
    if (num > 0) {
        positivos++;
    } else if (num < 0) {
        negativos++;
    }

    // Buscar el numero mayor
    if (num > mayor) {
        mayor = num;
    }
}

console.log("Positivos:", positivos);
console.log("Negativos:", negativos);
console.log("Total elementos:", total);
console.log("El mayor es:", mayor);