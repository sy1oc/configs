return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        opts = {},
        keys = {
        {
            '<leader>?',
            function()
                require('which-key').show({ global = false })
            end,
            desc = 'Buffer Local Keymaps (which-key)',
        },
        },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        main = 'ibl',
        opts = {},
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
    },
    { 'sphamba/smear-cursor.nvim',
        opts = {}, 
    },
    { 'eandrju/cellular-automaton.nvim', },
}
