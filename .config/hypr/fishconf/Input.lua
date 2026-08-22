hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "ctrl:nocaps",
		kb_rules = "",

		follow_mouse = 0, -- 焦点跟随鼠标

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		force_no_accel = true, -- 关闭鼠标加速

		touchpad = {
			natural_scroll = false,
			clickfinger_behavior = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
