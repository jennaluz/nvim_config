-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jenna-luzpura/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/jenna-luzpura/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/jenna-luzpura/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/jenna-luzpura/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jenna-luzpura/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["conform.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\17lsp_fallback\2\vformat�\3\1\0\a\0\28\0)6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\20\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0044\5\3\0005\6\b\0>\6\1\5=\5\t\0044\5\3\0005\6\n\0>\6\1\5=\5\v\0044\5\3\0005\6\f\0>\6\1\5=\5\r\0044\5\3\0005\6\14\0>\6\1\5=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3B\1\2\0016\1\22\0009\1\23\0019\1\24\0015\3\25\0'\4\26\0003\5\27\0B\1\4\0012\0\0�K\0\1\0\0\14<leader>c\1\3\0\0\6n\6v\bset\vkeymap\bvim\21formatters_by_ft\1\0\0\6c\1\2\0\0\17clang_format\bcpp\1\2\0\0\17clang_format\20typescriptreact\1\3\0\0\14prettierd\rprettier\20javascriptreact\1\3\0\0\14prettierd\rprettier\15typescript\1\3\0\0\14prettierd\rprettier\15javascript\1\3\0\0\14prettierd\rprettier\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/jenna-luzpura/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\17lsp_fallback\2\vformat�\3\1\0\a\0\28\0)6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\20\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0044\5\3\0005\6\b\0>\6\1\5=\5\t\0044\5\3\0005\6\n\0>\6\1\5=\5\v\0044\5\3\0005\6\f\0>\6\1\5=\5\r\0044\5\3\0005\6\14\0>\6\1\5=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\4=\4\21\3B\1\2\0016\1\22\0009\1\23\0019\1\24\0015\3\25\0'\4\26\0003\5\27\0B\1\4\0012\0\0�K\0\1\0\0\14<leader>c\1\3\0\0\6n\6v\bset\vkeymap\bvim\21formatters_by_ft\1\0\0\6c\1\2\0\0\17clang_format\bcpp\1\2\0\0\17clang_format\20typescriptreact\1\3\0\0\14prettierd\rprettier\20javascriptreact\1\3\0\0\14prettierd\rprettier\15typescript\1\3\0\0\14prettierd\rprettier\15javascript\1\3\0\0\14prettierd\rprettier\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
