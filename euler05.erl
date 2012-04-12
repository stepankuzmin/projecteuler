-module(euler5).
-export([start/0]).

start() -> 
  start_acc(1).

start_acc(N) -> 
  case is_evently_divisible(N, 20) of 
    true -> N; 
    false -> start_acc(N+1)
  end.

is_evently_divisible(_, 0) -> 
  true;

is_evently_divisible(N, M) when N rem M == 0 -> 
  is_evently_divisible(N, M-1);

is_evently_divisible(_, _) -> 
  false.