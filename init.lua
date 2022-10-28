-- [[ init.lua ]]

-- [[ IMPORTS ]]
require('options')
require('statusline')
require('keymaps')
require('packer')
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'bluz71/vim-nightfly-guicolors'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end}
end)

