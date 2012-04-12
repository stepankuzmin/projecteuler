-module(euler2).
-export([start/0]).

start() ->
  start_acc(0, 0).

start_acc(N, Acc) ->
  F = fib(N),
  if F > 4000000 -> Acc;
    true -> if F rem 2 == 0 -> start_acc(N+1, Acc+F);
              true -> start_acc(N+1, Acc)
            end
  end.

fib(0) ->
  0;

fib(1) ->
  1;

fib(N) ->
  fib(N-1) + fib(N-2).