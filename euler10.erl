module(euler10).
-compile(export_all).

start() ->
    sieve(lists:seq(2, 2000000)).
sieve(List) ->
    sieve(List, 0).
sieve([], Acc) ->
    Acc;
sieve([H|T], Acc) ->
    sieve([X || X <- T, X rem H =/= 0], Acc+H).