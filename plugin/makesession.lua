local save_session = function()
  vim.ui.input({ prompt = 'Enter session name: ' }, function(input)
    if input and input ~= '' then
      local session_name = input .. '_session.vim'
      local session_path = vim.fn.getcwd() .. '/' .. session_name
      vim.cmd('mksession! ' .. vim.fn.fnameescape(session_path))
      print('Session saved to: ' .. session_path)
    else
      print 'Session name canceled.'
    end
  end)
end

vim.api.nvim_create_user_command('Save Session', save_session, {})
vim.keymap.set({ 'n' }, '<space>m', save_session)
