return {
  "nvimdev/dashboard-nvim",
  opts = function()
    local logo = "                                                              \n"
      .. "      ████ ██████ ██  ███   █████      ██              \n"
      .. "     ███████████        ███   █████                      \n"
      .. "     █████████ ███ ████████████████ ██   ███████ \n"
      .. "    █████████ ████████████  ████████ ████ ██████████ \n"
      .. "   █████████ █████     █████████████ ████ ████ ███ ███ \n"
      .. " █████████████████  █████████████ ████ ████ ███ ███ \n"
      .. "██████  ██████ █████████ ████████ ████ ████ ███ ███\n"

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
      -- stylua: ignore
      center = {
        { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
        { action = "Telescope projects",                                       desc = " Projects",        icon = " ", key = "p" },
        { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
        { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
-- return {
--   {
--     "goolord/alpha-nvim",
--     -- event = "VimEnter",
--     opts = function()
--       local dashboard = require("alpha.themes.dashboard")
--       local logo = [[
--                                               
--       ████ ██████ ██  ███   █████      ██
--      ███████████        ███   █████ 
--      █████████ ███ ████████████████ ██   ███████
--     █████████ ████████████  ████████ ████ ██████████
--    █████████ █████     █████████████ ████ ████ ███ ███
--  █████████████████  █████████████ ████ ████ ███ ███
-- ██████  ██████ █████████ ████████ ████ ████ ███ ███
--     ]]
--       --
--       dashboard.section.header.val = vim.split(logo, "\n")
--       dashboard.section.buttons.val = {
--         dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
--         dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
--         dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
--         dashboard.button("/", " " .. " Find text", ":Telescope live_grep <CR>"),
--         dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
--         dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
--         dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
--         dashboard.button("q", " " .. " Quit", ":qa<CR>"),
--       }
--       --   for _, button in ipairs(dashboard.section.buttons.val) do
--       --     button.opts.hl = "AlphaButtons"
--       --     button.opts.hl_shortcut = "AlphaShortcut"
--       --   end
--       --   dashboard.section.footer.opts.hl = "Type"
--       --   dashboard.section.header.opts.hl = "AlphaHeader"
--       --   dashboard.section.buttons.opts.hl = "AlphaButtons"
--       --   dashboard.opts.layout[1].val = 8
--       --   return dashboard
--       -- end,
--       -- config = function(_, dashboard)
--       --   vim.b.miniindentscope_disable = true
--       --
--       --   -- close Lazy and re-open when the dashboard is ready
--       --   if vim.o.filetype == "lazy" then
--       --     vim.cmd.close()
--       --     vim.api.nvim_create_autocmd("User", {
--       --       pattern = "AlphaReady",
--       --       callback = function()
--       --         require("lazy").show()
--       --       end,
--       --     })
--       --   end
--       --
--       --   require("alpha").setup(dashboard.opts)
--       --
--       --   vim.api.nvim_create_autocmd("User", {
--       --     pattern = "LazyVimStarted",
--       --     callback = function()
--       --       local stats = require("lazy").stats()
--       --       local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
--       --       dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
--       --       pcall(vim.cmd.AlphaRedraw)
--       --     end,
--       --   })
--     end,
--   },
-- }
