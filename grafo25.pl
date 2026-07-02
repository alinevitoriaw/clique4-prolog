adj(0,3).  adj(3,0).
adj(0,5).  adj(5,0).
adj(0,12). adj(12,0).
adj(0,16). adj(16,0).

adj(1,2).  adj(2,1).
adj(1,5).  adj(5,1).
adj(1,9).  adj(9,1).
adj(1,12). adj(12,1).
adj(1,15). adj(15,1).
adj(1,16). adj(16,1).
adj(1,17). adj(17,1).

adj(2,4).  adj(4,2).
adj(2,5).  adj(5,2).
adj(2,6).  adj(6,2).
adj(2,9).  adj(9,2).
adj(2,17). adj(17,2).

adj(3,11). adj(11,3).
adj(3,14). adj(14,3).
adj(3,16). adj(16,3).

adj(4,5).  adj(5,4).
adj(4,8).  adj(8,4).
adj(4,9).  adj(9,4).
adj(4,15). adj(15,4).

adj(5,7).  adj(7,5).
adj(5,10). adj(10,5).
adj(5,11). adj(11,5).
adj(5,13). adj(13,5).
adj(5,15). adj(15,5).
adj(5,17). adj(17,5).

adj(6,7).  adj(7,6).
adj(6,9).  adj(9,6).
adj(6,11). adj(11,6).
adj(6,12). adj(12,6).

adj(7,9).  adj(9,7).
adj(7,15). adj(15,7).
adj(7,17). adj(17,7).

adj(8,14). adj(14,8).
adj(8,16). adj(16,8).
adj(8,17). adj(17,8).

adj(9,12). adj(12,9).
adj(9,16). adj(16,9).

adj(10,12). adj(12,10).
adj(10,16). adj(16,10).

adj(11,14). adj(14,11).

adj(12,13). adj(13,12).
adj(12,14). adj(14,12).

adj(13,15). adj(15,13).
adj(13,16). adj(16,13).

adj(14,15). adj(15,14).
adj(14,16). adj(16,14).

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

mostra_todas_clique4 :-
    setof([A,B,C,D],
          ( adj(A,B), adj(A,C), adj(A,D),
            adj(B,C), adj(B,D), adj(C,D),
            A @< B, B @< C, C @< D ),
          Cliques),
    !,
    length(Cliques, N),
    format("~w clique(s) de tamanho 4 encontrada(s):~n", [N]),
    forall(member([A,B,C,D], Cliques),
           format("  {~w, ~w, ~w, ~w}~n", [A,B,C,D])).
mostra_todas_clique4 :-
    write('Nenhuma clique de tamanho 4 encontrada.'), nl.
