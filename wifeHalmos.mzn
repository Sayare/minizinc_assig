include "globals.mzn";

int: min_shake = 0; 
int: max_shake = 8;
int: participants = 10;
int: halmas_shake = (participants - 2) div 2;
int: handshakes = participants*2;
array[1..9] of var min_shake..max_shake: shake; 
array[1..participants, 1..participants] of var bool: person;

constraint forall(i in 1..10)(person[i,i] = false); %can't shake own hand
constraint forall(i in 1..5) (count(person[i*2 -1,..])+ count(person[i*2,..]) = 8); %derived from handshake 8 is partner w handshake 0
constraint alldifferent(i in 2..10)(count(person[i,..]));
constraint count(person[1,..]) = halmas_shake; 
solve satisfy;
output[show(count(person[2,..])), show(count(person[1,..]))]
