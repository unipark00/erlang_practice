%% @author ejungpa
%% @doc @todo Add description to data_types.

-module(data_types).

-compile(export_all).
% -export([test_bit_string/0]).

%% Bit String
test_bit_string() ->
   Bin1 = <<10,20>>,
   X = binary_to_list(Bin1),
   io:fwrite("~w~n",[X]).

%% Tuple
test_tuple() ->
   T1 = {john,24,{june,25}},
   io:fwrite("~w~n",[tuple_size(T1)]),
   io:fwrite("~w~n",[element(3,T1)]).

%% Map
test_map() ->
   M1 = #{name=>john,age=>25},
   io:fwrite("~w~n",[map_size(M1)]),
	 io:fwrite("~w~n",[maps:find('name',M1)]), % {ok,john}
	 io:fwrite("~w~n",[maps:find(age,M1)]), % {ok,25}
	 io:fwrite("~w~n",[maps:find(25,M1)]), % error
   io:fwrite("~w~n",[maps:get(name,M1)]), % john
   % io:fwrite("~w~n",[maps:get(25,M1)]), % exception error: {badkey,25}
   T1 = {john,24,{june,25}},
   io:fwrite("~w~n",[maps:get(name,T1)]), % exception error: {badmap,{john,24,{june,25}}}
   M2 = #{},
   io:fwrite("~w~n",[map_size(M2)]).

%% List
test_list() ->
   L = [10,20,30],
   io:fwrite("~w~n",[length(L)]).
