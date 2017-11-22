%%%-------------------------------------------------------------------
%% @doc vernemq_kinesis public API
%% @end
%%%-------------------------------------------------------------------

-module(vernemq_kinesis_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    vernemq_kinesis_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.
