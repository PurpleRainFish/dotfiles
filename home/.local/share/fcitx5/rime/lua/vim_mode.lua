local function vim_mode(key, env)
	if key.keycode == 65307 then
		env.engine.context:set_option("ascii_mode", true)
	end
	return 2
end
return vim_mode
