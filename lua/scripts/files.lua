local fileExists = function (filename)
	local f = io.open(filename, "r")
	return f ~= nil and io.close(f)
end

local todayString = function ()
	return os.date("%Y/%B/%d")
end

local createTodayFolder = function ()
	os.execute("mkdir -p " .. todayString())
end

return {
	createFile = function (filename)
		local abs = todayString().."/"..filename
		createTodayFolder()
		if fileExists(abs) then
			vim.cmd.tabnew()
			vim.cmd.edit(abs)
		else
			local file, err = io.open(abs, "w")
			if file ~= nil then file:close() else error("something funny: "..err, 1) end
			vim.cmd.tabnew()
			vim.cmd.edit(abs)
		end
	end,
}


