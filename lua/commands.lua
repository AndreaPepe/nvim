vim.api.nvim_create_user_command("PackAdd", function(opts)
	vim.pack.add(opts.fargs)
end, { nargs = '+', desc = "Add plugins (:PackAdd /user/repo1 /user/repo2)" })

vim.api.nvim_create_user_command("PackDel", function(opts)
	vim.pack.del(opts.fargs)
end, { nargs = '+', desc = "Delete plugins (:PackDel plugin1 plugin2)" })

vim.api.nvim_create_user_command("PackUpdate", function(opts)
	if opts.args:match("%S") then
		-- update specific plugins
		local plugins = vim.split(opts.args, "%S+", { trimempty=true })
		vim.pack.update(plugins)
	else
		-- update all
		vim.pack.update()
	end
end, { nargs = '*', desc = "Update all or specific plugins" })

vim.api.nvim_create_user_command("PackCheck", function(opts)
	local non_active = vim.iter(vim.pack.get())
		:filter(function(x) return not x.active end)
		:map(function(x) return x.spec.name end)
		:totable()

	if #non_active == 0 then
		vim.notify("OK - No inactive plugins found!",
				vim.log.levels.INFO)
		return
	else
		vim.notify("Found " .. #non_active .. " inactive plugins!",
				vim.log.levels.INFO)
	end
end, { desc = "Check for inactive plugins" })
