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
 }
}
