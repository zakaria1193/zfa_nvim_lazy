return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-a>",
          accept_word = "<M-w>",
          accept_line = "<M-$>",
          next = "<M-n>",
          prev = "<M-p>",
          dismiss = "<C-]>",
        },
      },
      panel = { auto_refresh = true },
      filetypes = {
        markdown = true,
        yaml = true,
      },
    },
  },
}
