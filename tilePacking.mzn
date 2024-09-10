/*
 *
 * Copyright: Pierre.Flener at it.uu.se and his TAs, 2024.
 *
 * This file is part of courses 1DL442 and 1DL451 at Uppsala
 * University in Sweden.
 *
 * Permission is hereby granted only to the registered students of
 * those courses to use this file, for a homework assignment.
 *
 * The copyright notice and permission notice above shall be
 * included in all copies and extensions of this file, and those
 * are not allowed to appear publicly on the internet, both during
 * a course instance and forever after.
 *
 */

%%% Team ..., UU, courses 1DL442 and 1DL451, Assignment 1 | Project, 2024
%%%
%%% Fill in for every "..." and delete all irrelevant text.
%%% In particular, delete the copyright notice for the Project.

include "globals.mzn";

%% Parameters:
int: n = 6;
array[1..n] of var 1..n: sizes;


%par int: w = (n*2)-1; from deriving problem
%par int: h = (n*2)-3; %from deriving problem
int: nsum = (sum([i | i in 1..n]));
var 1..nsum: w;
var 1..nsum: h;

array[1..n] of var  1..nsum: xpos;
array[1..n] of var  1..nsum: ypos;



constraint alldifferent(sizes);
constraint diffn(xpos, ypos, sizes,sizes);
constraint forall(i in 1..n)(xpos[i] + sizes[i] -1<= w);
constraint forall(i in 1..n)(ypos[i] + sizes[i] -1 <= h);


%array[1..n] of var 1..n: num_array;
%var int: max = sum(i in 1..n-1) (num_array[i] * num_array[i+1]);


%par int: num_of_children = 9; % ... semantics ... (for example: X[i,j] = ... i ... j ...)
%int: max_age = 150;
%int: min_age = 1;
%array[1..num_of_children] of var min_age..max_age: age;
%var int: total = sum(i in 1..num_of_children)(pow(age[i],2));

%% Derived parameters:
%...; % ... semantics ...
% None

%% Decision variables:
%var min_age..max_age: parent_age; % ... semantics ... (for example: X[i,j] = ... i ... j ...)
% Problem constraints enforced by this choice of variables:
% ...
% No problem constraints are enforced by this choice of variables.

%% Redundant decision variables:
%...; % ... semantics ...; (non-)mutually redundant with ...
% None

%% Channelling constraints:
%constraint ; % 1-way from ... to ... / 2-way between ... and ...
% None

%% Problem constraints:

%constraint alldifferent(num_array);


%constraint forall([age[i+1]-age[i] = age[i] - age[i-1] | i in 2..num_of_children-1])  ; % ... semantics 
%constraint age[1] != age[2];
%constraint pow(parent_age, 2) = total;

%% Implied constraints:

%% Symmetry-breaking problem constraints:
%constraint symmetry_breaking_constraint(...); % ... semantics ...
% None

solve minimize h*w;
  %% Search srategy:
  % ... paraphrase ...:
 % :: ..._search(...)
  %% Objective and objective function:
  % ... paraphrase ...:
  

%% Pretty-print solutions:
output [show(sizes)] ;
output [show(h)];
output [show(w)];
