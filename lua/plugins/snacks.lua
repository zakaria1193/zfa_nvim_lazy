return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      formatters = {
        file = {
          truncate = 10000,
          filename_first = true,
        },
      },
      win = {
        -- input window
        input = {
          keys = {
            -- to close the picker on ESC instead of going to normal mode,
            ["<Esc>"] = { "close", mode = { "n", "i" } },
          },
        },
      },
    },
  },
}
