"use strict";

console.log(Tree_showTree(Tree_exTree()));
console.log(Tree_showTree(Tree_binTree(3n)));
const leaf = {h: 0};
console.log(Tree_showTree({h: 1, a1: {h: 1, a1: leaf, a2: leaf}, a2: leaf}));
