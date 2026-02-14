enum CALLBACKS {
	PLANTED,
	GROWN,
	CALLBACKS_SIZE
}

//table of callback events
globalvar arraytable_callbacks;

//bind a method to a slot in the callbacks table
function callbacks_subscribe(_method, _callback_id) {
	var _callback_slot = arraytable_callbacks[_callback_id];
	array_push(_callback_slot, _method);
}

//build the table of callbacks
function build_callbacks() {
	arraytable_callbacks = array_create(CALLBACKS.CALLBACKS_SIZE);
	
	for(var _i = 0; _i < CALLBACKS.CALLBACKS_SIZE; _i++) {
		arraytable_callbacks[_i] = [];
	}
}

//"announce" a callback's trigger
function callbacks_trigger(_callback_id, _struct_args={}) {
	var _array = arraytable_callbacks[_callback_id];
	var _size = array_length(_array);
	
	for(var _i = 0; _i < _size; _i++){
		var _method = _array[_i];
		method_call(_method,[_struct_args]);
	}
}

function clear_callbacks() {
	build_callbacks();
}