-module(euler1).
-export([start/0]).

start() ->
  start_acc(0, 0).

start_acc(1000, Acc) ->
  Acc;

start_acc(N, Acc) when N rem 3 == 0; N rem 5 == 0 ->
  start_acc(N+1, Acc+N);

start_acc(N, Acc) ->
  start_acc(N+1, Acc).