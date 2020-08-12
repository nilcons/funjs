"use strict";

// console.log(Main__showTree(Main__exTree()));
console.log(Main__showTree(Main__binTree(new $JSRTS.jsbn.BigInteger("3"))));
const leaf = {type: 0};
console.log(Main__showTree({type: 1, $1: {type: 1, $1: leaf, $2: leaf}, $2: leaf}));
