adj(0,3).  adj(3,0).
adj(0,14). adj(14,0).
adj(0,16). adj(16,0).
adj(0,11). adj(11,0).
adj(0,13). adj(13,0).

adj(3,14). adj(14,3).
adj(3,11). adj(11,3).
adj(3,16). adj(16,3).

adj(14,16). adj(16,14).

adj(16,8).  adj(8,16).
adj(16,1).  adj(1,16).
adj(16,5).  adj(5,16).
adj(16,12). adj(12,16).
adj(16,15). adj(15,16).

adj(8,1). adj(1,8).
adj(8,4). adj(4,8).

adj(1,4).  adj(4,1).
adj(1,15). adj(15,1).
adj(1,10). adj(10,1).
adj(1,5).  adj(5,1).
adj(1,9).  adj(9,1).
adj(1,2).  adj(2,1).
adj(1,17). adj(17,1).

adj(4,17). adj(17,4).
adj(4,2).  adj(2,4).
adj(4,9).  adj(9,4).

adj(15,5).  adj(5,15).
adj(15,10). adj(10,15).

adj(10,5). adj(5,10).
adj(10,9). adj(9,10).

adj(5,12). adj(12,5).
adj(5,13). adj(13,5).
adj(5,9).  adj(9,5).
adj(5,6).  adj(6,5).

adj(13,12). adj(12,13).
adj(13,11). adj(11,13).

adj(12,9).  adj(9,12).
adj(12,11). adj(11,12).
adj(12,6).  adj(6,12).

adj(11,6). adj(6,11).

adj(9,2). adj(2,9).
adj(9,7). adj(7,9).
adj(9,6). adj(6,9).

adj(2,17). adj(17,2).
adj(2,7).  adj(7,2).

adj(7,6). adj(6,7).

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
