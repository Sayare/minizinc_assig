include "globals.mzn";

int: n = 5;
array[1..n] of var 1..n: pair_array;


constraint alldifferent(pair_array);

var int: sum = sum(i in 1..n-1)(pair_array[i]* pair_array[i+1]);
solve maximize sum;

output[show(sum),show(pair_array)]