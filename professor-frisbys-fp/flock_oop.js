// exercise in page 12
class Flock {
    constructor(n) {
        this.seaguls = n;
    }
    // more methods

    conjoin(other) {
        this.seaguls += other.seaguls;
        return this;
    }

    breed(other) {
        this.seaguls = this.seaguls * other.seaguls;
        return this;
    }
}

// cantidad de seaguls
const flockA = new Flock(4);
const flockB = new Flock(2);
const flockC = new Flock(0);

//const result = flockA.conjoin(flockC).breed(flockB).conjoin(flockA.breed(flockB)).seaguls;
const result = flockA
    .conjoin(flockC)
    .breed(flockB)
    .conjoin(flockA.breed(flockB))
    .seaguls;
// 32

console.log(result);

