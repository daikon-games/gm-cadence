if (running) {
	routine();
	steps -= 1;
	if (steps == 0) {
		instance_destroy();
	}
}
