-module(euler6).
-export([start/0]).

start() -> 
  N = fac(100),
  N*N-fac2(100).

fac(N) -> 
  fac_acc(N, 0).

fac_acc(0, Acc) -> 
  Acc;

fac_acc(N, Acc) -> 
  fac_acc(N-1, Acc+N).

fac2(N) -> 
  fac2_acc(N, 0).

fac2_acc(0, Acc) -> 
  Acc;

fac2_acc(N, Acc) -> 
  fac2_acc(N-1, Acc+N*N).