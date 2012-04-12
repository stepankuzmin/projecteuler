-module(euler7).
-export([start/0]).

start() ->
  start_acc(2, 0).

start_acc(N, 10001) ->
  N-1;

start_acc(N, Acc) ->
  case is_prime(N) of
    true -> start_acc(N+1, Acc+1);
    false -> start_acc(N+1, Acc)
  end.

is_prime(N) ->
  is_prime_acc(N, N-1).

is_prime_acc(_, 1) ->
  true;

is_prime_acc(N, M) when N rem M == 0 ->
  false;

is_prime_acc(N, M) ->
  is_prime_acc(N, M-1).