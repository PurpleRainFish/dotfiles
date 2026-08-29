-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "DP-1",
	mode = "2560x1440@165.00",
	position = "auto",
	scale = "1.25",
})

hl.monitor({
	output = "eDP-1",
	mode = "2560x1600@240.00",
	position = "auto",
	scale = "1.6",
})

-- hl.workspace_rule({ workspace = "r[1-9]", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "6", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "7", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "8", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "9", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1", default = true })
