%%%-------------------------------------------------------------------
%% @doc zzan top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(zzan_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
	log:info("Info"),
	log:warning("warning"),
	log:error("error"),
	error_logger:error_msg("error over error_logger"),
	{ok, { {one_for_all, 0, 1}, [ ]} }.

%%====================================================================
%% Internal functions
%%====================================================================
