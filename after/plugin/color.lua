--vim.opt.background = "dark"
--vim.cmd.colorscheme("nord")

vim.cmd [[ set background=dark ]]
vim.cmd [[ colorscheme nord ]]
--vim.api.nvim_set_hl(0, "LineNr", { bg = "#3B4252" })

vim.cmd([[
    function! IsHexColorLight(color) abort
        let l:raw_color = trim(a:color, '#')

        let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
        let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
        let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

        let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

        return l:brightness > 155
    endfunction
]])

-- highlight trailing whitespaces
vim.cmd([[
    highlight ExtraWhitespace ctermbg=240 guibg=#FFD9D9
    match ExtraWhitespace /\s\+$/
    au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    au InsertLeave * match ExtraWhitespace /\s\+$/
]])
