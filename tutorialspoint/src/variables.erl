%% @author ejungpa
%% @doc @todo Add description to variables.

-module(variables).

-compile(export_all).

test_var() -> 
   X = 40, 
   Y = 50, 
   Result = X + Y, 
   io:format("~w~n",[Result]).

test_wrong_var() -> 
   X = 40, 
   Y = 50, 
   result = X + Y.
   % io:format("~w~n",[Result]). % compile error

test_single_assign() ->
   X = 40,
   Y = 50,
   X = 60, % exception error: no match of right hand side value 60
   io:fwrite("~w~n",[X]).

test_printing() ->
   X = 40.00, 
   Y = 50.00, 
   io:fwrite("~f~n",[X]), 
   io:fwrite("~e~n",[Y]).
