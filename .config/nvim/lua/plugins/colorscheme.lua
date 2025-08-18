return {
    -- add gruvbox
    --{ "ellisonleao/gruvbox.nvim" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            --colorscheme = "gruvbox",
            -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
            colorscheme = "catppuccin-macchiato",
        },
    },
}
