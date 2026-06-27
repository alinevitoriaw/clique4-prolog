adj(1,2). adj(2,1).
adj(1,3). adj(3,1).

adj(2,3). adj(3,2).
adj(2,4). adj(4,2).
adj(2,5). adj(5,2).

adj(3,4). adj(4,3).
adj(3,5). adj(5,3).

adj(4,5). adj(5,4).
adj(4,6). adj(6,4).

adj(5,7). adj(7,5).

adj(6,7). adj(7,6).

clique4 :-
    adj(A, B), adj(A, C), adj(A, D),
    adj(B, C), adj(B, D),
    adj(C, D),
    A @< B, B @< C, C @< D.

mostra_clique4 :-
    adj(A, B), adj(A, C), adj(A, D),
    adj(B, C), adj(B, D),
    adj(C, D),
    A @< B, B @< C, C @< D, !,
    format("Clique de tamanho 4 encontrada: {~w, ~w, ~w, ~w}~n", [A,B,C,D]).
mostra_clique4 :-
    write('Nenhuma clique de tamanho 4 encontrada.'), nl.
