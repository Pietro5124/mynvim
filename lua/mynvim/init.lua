require("mynvim.packer")
require("mynvim.set")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function()
    local current_buf = vim.api.nvim_buf_get_name(0)

    if current_buf == "" or vim.bo.filetype == "netrw" then
        vim.cmd("lcd ..");
        vim.cmd("Ex ..");
    else
        vim.cmd("Ex");
    end
end)
