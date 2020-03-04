%% @author ejungpa
%% @doc @todo Add description to loops.

-module(loops).

%-compile(export_all).
%-export([while/1,while/2,test_while/0]).
-export([test_while/0]). 

while(L) -> while(L,0).

while([], Acc) -> Acc;
while([_|T], Acc) ->
   io:fwrite("~w ~p~n",[Acc,T]), 
   while(T, Acc+1). 
   
test_while() ->
   X = [1,2,3,5], 
   io:fwrite("sum:~p~n",[while(X)]).
