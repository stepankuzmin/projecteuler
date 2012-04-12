-module(euler9).
-compile(export_all).

start() ->
    start(1, 2, 1000, []).
start(A, Max, Max, Acc) ->
    start(A+1, A+2, Max, Acc);
start(Max, _B, Max, Acc) ->
    Acc;
start(A, B, Max, Acc) ->
    Sqrt = math:sqrt(A*A+B*B),
    C = round(Sqrt),
    case C == Sqrt of
        true -> case A+B+C == Max of
                    true -> A*B*C;
                    false -> start(A, B+1, Max, [{A, B, C}|Acc])
                end;
        false -> start(A, B+1, Max, Acc)
    end.