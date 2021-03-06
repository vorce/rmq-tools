-module(rmq_consume_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    Props = application:get_all_env(),
    rmq_consume_sup:start_link(Props).

stop(_State) ->
    ok.
