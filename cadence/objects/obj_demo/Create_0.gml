display_set_gui_size(512, 288);

runInFrames = 1;
runForFrames = 1;

buttons = [
	{
		x: 100, y: 80, w: 40, h: 40,
		fn: function() { obj_demo.runInFrames = max(1, obj_demo.runInFrames - 1) }
	},
	{
		x: 372, y: 80, w: 40, h: 40,
		fn: function() { obj_demo.runInFrames = obj_demo.runInFrames + 1 }
	},
	{
		x: 100, y: 120, w: 40, h: 40,
		fn: function() { obj_demo.runForFrames = max(1, obj_demo.runForFrames - 1) }
	},
	{
		x: 372, y: 120, w: 40, h: 40,
		fn: function() { obj_demo.runForFrames = obj_demo.runForFrames + 1 }
	},
	{
		x: 216, y: 170, w: 80, h: 30,
		fn: function() { run_in_frames(obj_demo.demoFunc, obj_demo.runInFrames, obj_demo.runForFrames) }
	}
]

function demoFunc() {
	var mX = irandom_range(32, 480);
	var mY = irandom_range(32, 256);
	var anim = instance_create_depth(mX, mY, 0, obj_animation);
	anim.sprite_index = spr_kai_jump;
}
