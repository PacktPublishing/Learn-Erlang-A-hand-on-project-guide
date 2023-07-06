%%%-------------------------------------------------------------------
%% @doc iotworks public API
%% @end
%%%-------------------------------------------------------------------

-module(iotworks_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    io:format("***Starting iotworks***\n"),
    iotworks_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
