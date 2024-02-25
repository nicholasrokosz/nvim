return {
  {
    "folke/zen-mode.nvim",
    opts = {
      -- window = {
      --   backdrop = 0.05,
      -- },
      plugins = {
        kitty = {
          enabled = true,
          font = "+6",
        },
      },
    },
    keys = {
      { "<leader>!", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
    },
  },
  {
    "folke/twilight.nvim",
    opts = {
      dimming = {
        alpha = 0.99,
        color = { "Comment", "#9D8D87" },
      },
    },
  },
}
