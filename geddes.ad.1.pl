/*
Assignment No. 267924
Tutor Group E
Andrew Geddes KI Y1
andrewdavidgeddes@gmail.com
I hereby declare I have actively participated in solving every exercise. All solutions are entirely my own work and no part has been copied from other sources.
4 hours lab
2 hours homework.
2 hours homework.
*/

%******************************
% 0. No thank you.
%******************************

%******************************
% 1.
%******************************

/*
?- answer(andrew).
The favourite text editor of the TA of this student is atom
true.
*/

has_ta(alice, lieuwe).
has_ta(bob, lieuwe).
has_ta(carol, johan).
has_ta(andrew, riemer).

has_favourite_editor(lieuwe, vim).
has_favourite_editor(malvin, emacs).
has_favourite_editor(johan, 'VS Code').
has_favourite_editor(riemer, atom).

answer(X) :-
  % gets the ta, and then the tas favorite editor
  has_ta(X, Y),
  has_favourite_editor(Y, Z),
  % prints the tas editor
  write('The favourite text editor of the TA of this student is '), write(Z).

% 2. EXERCISE 2.1
% base case for empty non list
analyse_list(_) :-
  write("No.").

% checks for empty list
analyse_list([]) :-
  write("This list is empty").

% checks for list that isnt empty and splits off the head. then writes head and tail.
analyse_list([X | Y]) :-
  write("This is the head: "),
  write(X),
  nl,
  write("This is the tail: "),
  write(Y).

% 3. EXERCISE 2.2
% base case checks for head of list to contain the variable requested by the function.
memb2(M, [M | _ ]).

% if the list head contains anything but the variable, remove from the list and loop back checking the next item
memb2(M, [_ | Rest]) :-
  memb2(M, Rest).

% 4. atom2
% base case to ensure there are two lists to work with
atoms([], []).

% Checks if the head contains an atom with the atom/1 function. then appends it onto the return list
atoms([X | Y], [X | B]) :-
  atom(X),
  atoms(Y, B).

% Removes the head to reiterate upon
atoms([_ | Y], A) :-
  atoms(Y, A).


% 5.1 Return last element
% Checks to split head off of list.
last2([_|Tail], Result) :-
  last2(Tail, Result).

% If not possible to take off Head it will return the variable X
last2([X], Result) :-
   Result = X.

% 5.2 Return last element (with append)

% originally i head a list checker here but both cases simply return false

% uses append/3 to take the last item of list X and return it in the variable Y.
last3(X,Y) :-
    append(_,[Y], X).
