adj(a,b). adj(b,a).
adj(a,c). adj(c,a).
adj(a,d). adj(d,a).
adj(b,c). adj(c,b).
adj(b,d). adj(d,b).
adj(c,d). adj(d,c).
adj(a,e). adj(e,a).

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
