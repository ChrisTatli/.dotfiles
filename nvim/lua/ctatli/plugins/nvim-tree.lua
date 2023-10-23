return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

        require("nvim-tree").setup(
            {
            -- change folder arrow icons
            renderer = {
                icons = {
                glyphs = {
                    folder = {
                    arrow_closed = "", -- arrow when folder is closed
                    arrow_open = "", -- arrow when folder is open
                    },
                },
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                window_picker = {
                    enable = false,
                },
                },
            },
            -- 	git = {
            -- 		ignore = false,
            -- 	},
        })
        --set-keymaps
        vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
    end,
}

