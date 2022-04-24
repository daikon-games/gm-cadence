running = false;
routine = noone;
steps = 1;

function run(_routine, _initialDelay, _steps) {
	routine = _routine;
	steps = _steps;
	alarm[0] = max(1, _initialDelay);
}
