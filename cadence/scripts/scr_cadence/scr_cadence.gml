/// @function run_in_frames(routine, executionDelay, [steps])
/// @param {function} routine The function to execute
/// @param {integer} executionDelay The number of frames to wait before executing routine
/// @param {integer} steps The duration of frames for which to execute the function. Will just run once if not specified
/// @description Schedules a function to be executed in a given number of frames, and run for a given duration of frames
function run_in_frames(routine, executionDelay, steps = 1) {
	//var runner = instance_create_depth(0, 0, 0, obj_cadence_runner);
	//runner.run(routine, executionDelay, steps);
	var ts = time_source_create(time_source_game, executionDelay, time_source_units_frames, routine, [], steps);
	time_source_start(ts);
}
