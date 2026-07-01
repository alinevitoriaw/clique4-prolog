adj(a,b). adj(b,a).
adj(a,c). adj(c,a).
adj(b,c). adj(c,b).

adj(c,d). adj(d,c).

adj(d,e). adj(e,d).
adj(d,f). adj(f,d).
adj(e,f). adj(f,e).

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
