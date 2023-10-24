-- return {
--     "mhartington/oceanic-next"
-- }

return {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
        local configs = require('onedark');
        configs.setup({
            style = 'darker'
        })
        configs.load();
        require('onedark').load()
    end
}
