%% TODO: rename FAIL to ABORT once we require at least R13B04 for
%% building rebar. Macros with different arity were not supported by the
%% compiler before 13B04.
-define(FAIL, rebar_utils:abort()).
-define(ABORT(Str, Args), rebar_utils:abort(Str, Args)).

-define(CONSOLE(Str, Args), io:format(Str, Args)).

-define(DEBUG(Str, Args), rebar_log:log(debug, Str, Args)).
-define(INFO(Str, Args), rebar_log:log(info, Str, Args)).
-define(WARN(Str, Args), rebar_log:log(warn, Str, Args)).
-define(ERROR(Str, Args), rebar_log:log(error, Str, Args)).

-define(FMT(Str, Args), lists:flatten(io_lib:format(Str, Args))).

-define(DEFAULT_LIB_DIRS, ["_checkouts", "apps", "lib", "."]).
-define(DEFAULT_DEPS_DIR, "_deps").
-define(DEFAULT_PLUGINS_DIR, "_plugins").
-define(DEFAULT_TEST_DEPS_DIR, "_tdeps").
-define(DEFAULT_CONFIG_FILE, "rebar.config").
-define(LOCK_FILE, "rebar.lock").

-ifdef(namespaced_types).
-type rebar_dict() :: dict:dict().
-else.
-type rebar_dict() :: dict().
-endif.
