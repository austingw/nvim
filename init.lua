--[[
 ________  ___  ___  ________  _________  ___  ________   ________  ___       __      
|\   __  \|\  \|\  \|\   ____\|\___   ___\\  \|\   ___  \|\   ____\|\  \     |\  \    
\ \  \|\  \ \  \\\  \ \  \___|\|___ \  \_\ \  \ \  \\ \  \ \  \___|\ \  \    \ \  \   
 \ \   __  \ \  \\\  \ \_____  \   \ \  \ \ \  \ \  \\ \  \ \  \  __\ \  \  __\ \  \  
  \ \  \ \  \ \  \\\  \|____|\  \   \ \  \ \ \  \ \  \\ \  \ \  \|\  \ \  \|\__\_\  \ 
   \ \__\ \__\ \_______\____\_\  \   \ \__\ \ \__\ \__\\ \__\ \_______\ \____________\
    \|__|\|__|\|_______|\_________\   \|__|  \|__|\|__| \|__|\|_______|\|____________|
                       \|_________|                                                   
This is my personal Neovim configuration 
--]]

-- [[ Basic Setup ]]
--These are super important to set up before anything else
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Options ]]
require 'swag.config.options'

-- [[ Keymaps ]]
require 'swag.config.keymaps'

-- [[ Basic Autocommands ]]
require 'swag.config.autocmds'

-- [[ Plugins ]]
require 'lazy-bootstrap'
require 'lazy-plugins'
