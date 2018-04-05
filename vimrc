" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'tpope/vim-vividchalk'
  Plugin 'chriskempson/base16-vim'
  Plugin 'molokai'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'wgibbs/vim-irblack'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'candycode.vim'
  Plugin 'Colour-Sampler-Pack'
  Plugin 'flazz/vim-colorschemes'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-rbenv'
  Plugin 'tpope/vim-rake'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ervandew/supertab'
  Plugin 'kien/rainbow_parentheses.vim'

  " Searching
  "
  Plugin 'epmatsw/ag.vim'
  Plugin 'ctrlpvim/ctrlp.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'slim-template/vim-slim'
  Plugin 'nono/vim-handlebars'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'tpope/vim-haml'
  Plugin 'tpope/vim-cucumber'
  Plugin 'quentindecock/vim-cucumber-align-pipes'
  Plugin 'juvenn/mustache.vim'
  Plugin 'fatih/vim-go'
  Plugin 'rosstimson/scala-vim-support'
  Plugin 'guns/vim-clojure-static'
  Plugin 'chrisbra/csv.vim'
  Plugin 'briancollins/vim-jst'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'mxw/vim-jsx'
  Plugin 'lambdatoast/elm.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'elixir-lang/vim-elixir'
  Plugin 'luan/vim-concourse'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'pivotal/tmux-config'
  Plugin 'tpope/vim-dispatch'
  Plugin 'janko-m/vim-test'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
