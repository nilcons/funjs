"use strict";

const Tree = require("./jAgda.Tree");
const { BigInteger } = require("./biginteger");

console.log(Tree);

console.log(Tree.showTree(Tree.exTree));

console.log(Tree.showTree(Tree.binTree(new BigInteger(3))));
