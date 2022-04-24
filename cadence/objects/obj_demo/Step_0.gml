for (var i = 0; i < array_length(buttons); i++) {
	var btn = buttons[i]
	var _mouseX = window_view_mouse_get_x(0);
	var _mouseY = window_view_mouse_get_y(0);
	if (_mouseX > btn.x && _mouseX < btn.x + btn.w &&
		_mouseY > btn.y && _mouseY < btn.y + btn.h &&
		mouse_check_button_pressed(mb_left)) {
		btn.fn();
	}
}

