/// @desc rousr_dissonance_handler_on_ready(_script_index, [_user_data]) calls `_script_index` whenever Discord RPC fires the `ready` event
/// @param {any*} _script_index[0] Script resource index of script to execuse, takes `([_user_data])`
/// @param {any*} _user_data[1] Any user data you want to pass along to the script
function rousr_dissonance_handler_on_ready() {
	var _script_index = argument[0],
	    _user_data    = argument_count > 1 ? argument[1] : undefined;

	with (global.__rousr_dissonance)
	  Handlers[@ EDiscordHandlers.Ready] = [ _script_index, _user_data ];



}
