return {
  n = {
    ["<leader><leader>w"] = {
      function()
        vim.cmd.HopWordAC()
      end,
      desc = "Hop Words After"
    },
    ["<leader><leader>b"] = {
      function()
        vim.cmd.HopWordBC()
      end,
      desc = "Hop Words Behind"
    },
    ["<leader><leader>k"] = {
      function()
        vim.cmd.HopLineBC()
      end,
      desc = "Hop Lines Before Cursor"
    },
    ["<leader><leader>j"] = {
      function()
        vim.cmd.HopLineAC()
      end,
      desc = "Hop Lines After Cursor"
    },
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },

    ["<leader>t2f"] = { "<cmd>ToggleTerm 2 direction=float name=second<cr>", desc = "ToggleTerm second terminal float" },
    ["<leader>t2h"] = { "<cmd>ToggleTerm 2 size=10 direction=horizontal name=second<cr>", desc = "ToggleTerm second terminal horizontal split" },
    ["<leader>t2v"] = { "<cmd>ToggleTerm 2 size=80 direction=vertical name=second<cr>", desc = "ToggleTerm second terminal vertical split" },

    ["<leader>t3f"] = { "<cmd>ToggleTerm 3 direction=float name=second<cr>", desc = "ToggleTerm second terminal float" },
    ["<leader>t3h"] = { "<cmd>ToggleTerm 3 size=10 direction=horizontal name=second<cr>", desc = "ToggleTerm second terminal horizontal split" },
    ["<leader>t3v"] = { "<cmd>ToggleTerm 3 size=80 direction=vertical name=second<cr>", desc = "ToggleTerm second terminal vertical split" },
  }
}
