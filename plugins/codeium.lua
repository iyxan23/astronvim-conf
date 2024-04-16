return {
  "Exafunction/codeium.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  lazy = false,
  config = function()
    require("codeium").setup({})
  end,
}
