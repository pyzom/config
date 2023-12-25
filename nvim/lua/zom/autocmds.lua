local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand


augroup('SetTitle', { clear = true })
autocmd('VimLeave', {
    group = 'SetTitle',
    pattern = '*',
    callback = function ()
        os.execute('tmux select-pane -T ${PWD##*/}')
    end
})

