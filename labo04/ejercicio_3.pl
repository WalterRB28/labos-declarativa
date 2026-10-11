almacenar(N, L) :-
    integer(N),
    N < 0,
    !,
    Positive is -N,
    almacenar(Positive, L).

almacenar(N, [N]) :-
    integer(N),
    N >= 0,
    N < 10,
    !.

almacenar(N, [Digit|Rest]) :-
    integer(N),
    N >= 10,
    Digit is N mod 10,
    Next is N div 10,
    almacenar(Next, Rest).