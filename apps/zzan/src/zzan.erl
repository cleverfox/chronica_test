%%%-------------------------------------------------------------------
%% @doc zzan public API
%% @end
%%%-------------------------------------------------------------------

-module(zzan).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, start/0, stop/0, test/0]).

%%====================================================================
%% API
%%====================================================================
start() ->
	application:ensure_all_started(chronica),
	application:ensure_all_started(sync),
%	chronica_manager:active(true),
%	chronica_manager:add_application(zzan),
	application:ensure_all_started(zzan).

test() ->
	log:error("xxx").

stop() ->
	application:stop(zzan).

start(_StartType, _StartArgs) ->
    zzan_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
