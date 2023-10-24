return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local tel = require("telescope")
        tel.setup({
            defaults = {
                wrap_results = true }
        })
    end
}
