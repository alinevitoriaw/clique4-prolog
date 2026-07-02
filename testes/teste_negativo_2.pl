adj(a,1). adj(1,a).
adj(a,2). adj(2,a).
adj(a,3). adj(3,a).
adj(a,4). adj(4,a).

adj(b,1). adj(1,b).
adj(b,2). adj(2,b).
adj(b,3). adj(3,b).
adj(b,4). adj(4,b).

adj(c,1). adj(1,c).
adj(c,2). adj(2,c).
adj(c,3). adj(3,c).
adj(c,4). adj(4,c).

adj(d,1). adj(1,d).
adj(d,2). adj(2,d).
adj(d,3). adj(3,d).
adj(d,4). adj(4,d).

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
