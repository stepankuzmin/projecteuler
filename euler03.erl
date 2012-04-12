-module(euler3).
-export([start/0]).

start() ->
  brute(600851475143, 2).

brute(N, N) ->
  N;

brute(N, M) when N rem M == 0 ->
  brute(N div M, M+1);

brute(N, M) ->
  brute(N, M+1).