# To Install
(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone https://github.com/policygenius/vim-config.git ~/.vim
    ~/.vim/bin/install

# Updating
Fetch the latest version of vim-config and install all the new bundles by running:

    ~/.vim/bin/update

# Functionality

Below is a list of the plugins that are configured by default. There is a link to
the complete documentation as well as a quick description and maybe a few things
that you might think are pretty cool

When reading the docs, keep in mind that this config has comma (`,`) mapped as the 
leader key

## Ruby / Rails
* [vim-rails](https://github.com/tpope/vim-rails): Easy navigation of the standard Rails directory structure, enhanced syntax highlighting, interface to `rake`, interface to the `rails` command, partial extraction and much more!
    * `gf` on a partial path or class name to open the file
    * `:Emodel`, `:Eview`, `:Econtroller` to edit related files
    * `:Rake` to run the current spec file and `:.Rake` to focus on the current example
    * `:Rextract {file_name}` to extract the current selection to a new partial and replace the selection with `render {file_name}`
* [vim-endwise](https://github.com/tpope/vim-endwise) This is a simple plugin that helps to end certain structures automatically. In Ruby, this means adding `end` after `if`, `do`, `def` and several other keywords.
* [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring) gives some IDE-like refactoring support to vim. Examples [here](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/)
    * `:RExtractLet` or `,rel` to extract a local variable in a spec to a `let` declaration
    * `:RExtractMethod {name}` or `,rem {name}` to extract a the current selection to method named `{name}` and replace the current selection with `{name}`
    * `:RAddParameter {name}` or `,rap {name}` to add a parameter to a method definition
* [vim-blockle](https://github.com/jgdavey/vim-blockle) toggle between `do..end` and `{..}` with `,b` when your cursor is inside the block
* Convert a line with `local_variable_foo` to `let(:local_variable_foo) { double(:local_variable_foo) }` with `,ld`.  Just place your cursor anywhere on the variable and press `,ld`.

## General Editing
* [vim-repeat](https://github.com/tpope/vim-repeat) is a utility for repeating actions that come from plugins such as vim-surround
* [vim-surround](https://github.com/tpope/vim-surround) helps add/remove/change surround parentheses, quotes, and XML tags.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) lets you comment and uncomment things.  The most useful command is `,/` which comments or uncomments either the current line or the currently selected block.  This config has `,/` mapped to the Toggle instead of `,c` as listed in the docs (the rest of the commands use the `c` as listed).
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) contains a bunch of shortcuts for longer commands that start with colons.  Some of the better ones are:
    * `]q` and `[q` to go back and forth through the quickfix list (the result of using `:Ag` or `:Ack`).
    * `[f` and `]f` to navigate through files in the same directory as the current file.
    * `]n` and `[n` to go through merge conflicts.
    * It's not provided by this plugin, but `[h` and `]h` let you move through working copy changes in git in a similar manner.
* [gundo](http://sjl.bitbucket.org/gundo.vim/) lets you navigate your vim undo history as a tree.  Ever do that thing where you undo a few times, make a change, and want to undo your initial undo?  Type `:GundoToggle` and use the arrow keys to find the version you want.
* [tabular](https://github.com/godlygeek/tabular) makes it easy to make pretty ASCII tables and align equal signs of successive variable definitions.
* [syntastic](https://github.com/scrooloose/syntastic) runs your compiler or interpreter and displays syntax errors in vim.  A `>>` in the gutter means there is an error on that line, you can mouse over it for more details.
* [vim-airline](https://github.com/vim-airline/vim-airline) sets the status bar and makes it more configurable and useful by showing things like the current Git branch, etc.
* [supertab](https://github.com/ervandew/supertab) lets you press Tab after Ctrl-P or Ctrl-N to cycle through completion options.
* [j-split](https://github.com/mgamba/j-split/blob/master/plugin/j-split.vim) converts spaces in the current line to new lines by pressing `,j` (kind of like a simple use of `xargs`).
* [diffthese](https://github.com/matt-royal/diffthese) lets you use vimdiff on open windows.  You can use `:DiffLeft`, `:DiffRight`, etc.  `:DiffThese` lets you specify window numbers with number 1 in the top left, increasing clockwise.
* [camelcasemotion](http://www.vim.org/scripts/script.php?script_id=1905) defines motions to work on camelCase text.  The usual motions `w`, `b`, and `e` get the friends `,w`, `,b`, and `,e` that move within a word.  If your cursor is on the first letter of `lolCatAge` and you press `,w`, you will go the "C" in "Cat."  You can also use them as text objects, for instance if you are on the lowercase "a" in "lolCatAge" you can type `ci,w` to change it to 'lolDogAge'.
* [edit-plus](https://github.com/mgamba/edit-plus/blob/master/plugin/edit-plus.vim) lets you refer to line numbers when opening files.  For instance, type `:EP README.md:10` to jump to line 10 of your helpful README.  Sometimes when you type `:e` it is automatically changed to `:EP`.  This is useful for opening test failures from the command line into vim.
* [quickfixfix](https://github.com/brysgo/quickfixfix) maps the NERDtree key bindings to the quickfix window.  If you open NERDtree (`\\`) and press `?`, the descriptions of `o`, `i`, `s`, and `go` can be used in the quickfix window.
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) lets you use see where repeated motions would take you.  If you've ever used vimium's link navigation, it's like that.  Type the leader key twice and a motion to see a bunch of annotations in your file based on where repeated uses of that motion would take you, then press a number to go there.  For instance, to jump 2 words you can do `,,wb` instead of `2w`.
* [regreplop](http://www.vim.org/scripts/script.php?script_id=2702) lets you paste text over other text without destroying your default register.  Usually, if you yanked something and wanted to paste it over a word using `viwp`, you couldn't paste it again because the word you deleted overwrote what you originally yanked.  This plugin provides Ctrl-K to paste while keeping your buffer.  You can use it in visual mode or follow <Ctrl-K> with a motion.  Very handy for repeated replacements.
* [insert_mode_background_color](https://github.com/Peeja/insert_mode_background_color) changes the background color when you are insert mode.
* [vim-cdo](https://github.com/Peeja/vim-cdo) runs commands on every entry in the quickfix or location windows.  For instance, if you just searched for something with `:L9GrepBuffer foo` or `:Ag foo` and want to change the foos you found into bar, you could run `:Cdo s/foo/bar/`.  If you're doing a replacement like that, make sure not to do `:Cdo %s/.../...` with the percent sign because the first replacement in a file will mess up the later ones.  `:Ldo` is the same but for the location list, and suffix your commands with `/c` to confirm changes.
* [vim-snipmate](https://github.com/garbas/vim-snipmate) and [vim-snippets](https://github.com/honza/vim-snippets) provide TextMate like snippets where you can jump around the snippet with the tab key.
    * [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) is a prequisite of snipmate
    * [tlib_vim](https://github.com/tomtom/tlib_vim) is as well
* [vim-textobj-user](https://github.com/kana/vim-textobj-user) allows definition of custom vim "nouns".
  * [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock) lets you use `ar` and `ir` to select Ruby blocks just like you can do `a"` to select a string.
  * [kana/vim-textobj-line](https://github.com/kana/vim-textobj-line) selects entire lines.
    * `il` selects the entire line without leading or trailing whitespace.
    * `al` selects the entire line with all whitespace except for the linebreak.
    * `dd` continues to select the entire line including the linebreak.
  * [thinca/vim-textobj-between](https://github.com/thinca/vim-textobj-between) selects between arbitrary delimiters.
    * `if<delimiter>` selects the region between the delimiters, excluding the delimiters themselves.
    * `af<delimiter>` selects the region between the delimiters plus the delimiters.
    * Particularly useful with URLs. If `|` represents the cursor position: `/demonstration/with/riculo|usly/long/pathname/  -> cif/notso -> /demonstration/with/notso/long/pathname/`
  * [Julian/vim-textobj-variable-segment](https://github.com/Julian/vim-textobj-variable-segment) selects pieces of snake case or camel case identifiers. If `|` represents the cursor position:
    * `foo_ba|r_baz -> civquux -> foo_quux_baz`
    * `eggsAn|dCheese -> civOr -> eggsOrCheese`
* [YankRing](http://www.vim.org/scripts/script.php?script_id=1234)
lets you view and cycle through your previous copy and paste registers on the fly
  * After pasting use `<C-tab>` and `<C-S-tab>` to cycle through previously copied text.
  * In normal mode press `F6` to view previously copied text. Select one to paste it.
* [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) gives you multiple cursor support, similar to Sublime Text.
  * While in normal mode, press `<C-n>` to add a second cursor on the next occurance of the word or symbol under your cursor.
  * Use `<C-v>` to make a vertical selection, then press `<C-n>` to convert the selection into multiple cursors.
* [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) teaches vim how to follow the rules defined in `.editorconfig` files in your project, so that you can unify project preferences across multiple editors. See the [editorconfig homepage](http://editorconfig.org/) for more information.
* [projectionist.vim](https://github.com/tpope/vim-projectionist) gives you the ability to jump between related files, such as between a code file and its spec.
  * It also supports adding a `.projections.json` file to your project so you can teach Vim how to find the spec for the current source file. See the [README](https://github.com/tpope/vim-projectionist) for more details.
* [rainbow-parentheses](https://github.com/kien/rainbow_parentheses.vim) highlights nested parentheses, brackets, and curly braces with differing colors so you can match them up more easily.
  * Use `,rp` to toggle rainbow parenthesis mode in the current file. By default it is off.

## Window Management
* [ZoomWin](http://www.vim.org/scripts/script.php?script_id=508) lets you close all other windows with `<C-w>o`.  You can restore all the closed windows with the same command.  Useful with `:tabo` to close everything but what you're working on.

## Searching
* [ack](https://github.com/mileszs/ack.vim) lets you shell out to ack within vim using `:Ack pattern [directory]`.  By default, results show up in the quickfix window.  You can use `:AckAdd` to append to the quickfix window or prefix 'Ack' with an 'L' to use the location list (just like `:grep`'s siblings).
* [ag](https://github.com/epmatsw/ag.vim) is the above but for ag ([a faster ack replacement](https://github.com/ggreer/the_silver_searcher))
* [vim-abolish](https://github.com/tpope/vim-abolish) deserves a few lines:
    * It replaces `teh` with `the`.  Say hello to autocorrect memes, Ruby edition.  You can define your own with a regex-like syntax.
    * It helps you replace things with capitalization differences.  If you had the line `foo = Foo.new`, you could run `:S/foo/bar/g` to get `bar = Bar.new` (note the capital 'S').  You can also use curly braces like you would on the command line, for instance `:%S/facilit{y,ies}/building{,s}/g`.
    * It converts between camelCase and snake_case.  Use `cr` followed 's' for snake_case, 'm' for MixedCase, 'c' for camelCase, or 'u' for UPPER_CASE (these work within the current word and don't take a motion).
* [vim-qargs](https://github.com/nelstrom/vim-qargs) ([stack overflow](http://stackoverflow.com/questions/5686206/search-replace-using-quickfix-list-in-vim/5686810#5686810)) is kind of like Cdo.
* [ctrlp](https://github.com/kien/ctrlp.vim) is a fuzzy file finder invoked by hitting Ctrl-P in normal mode and typing some part of the file name you'd like to open.  This config also has `,f` mapped to the same function.

## Navigation
* [nerdtree](https://github.com/scrooloose/nerdtree) puts a directory tree on the left side of the screen.  Press `\` to open it at your project root, or `Shift-\` to open it with the current file selected.  You can press `m` to move, delete, or create files.  Press `?` inside the tree to get more help.
* [tagbar](http://majutsushi.github.io/tagbar/) puts ctags for the current file in a pane on the right.  Make sure [ctags](http://ctags.sourceforge.net/) is installed and then do `:TagbarToggle` to see them in vim.

## Development Tool Integration
* [vim-fugitive](https://github.com/tpope/vim-fugitive) puts git into vim.  It can do almost everything git related, some of the most useful features are:
    * `:Gblame` to blame the current file.  Press enter on a commit to see the full commit.  Do `:Gedit` to go back to the current version (or just open it again).
    * `:Gread` to check out the current file from git.  Very useful if you made some experimental changes that you want to get rid of.
    * `:Gbrowse` to open the current file on GitHub, useful for sending links to other people.
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) puts + and - signs in the gutter to show you what's changed in your working tree.  Use `[h` and `]h` to navigate between modified hunks. This plugin can slow down vim, so remove it if you're having problems.
* [tmux-config](https://github.com/pivotal/tmux-config) integrates tmux with Vim.  It helps with autosave support and pasting your tmux buffer into vim.
* [vim-dispatch](https://github.com/tpope/vim-dispatch) supplies `:Make` and `:Make!` which run in the background instead of blocking like `:make`.
* [ConqueTerm](http://code.google.com/p/conque/) lets your run interactive commands within vim.  Try `:ConqueTerm bash`.
* [vitality.vim](https://github.com/sjl/vitality.vim) makes Vim play nicely with iTerm2 and tmux. It adds things like cursor change on insert mode and focus-lost detection for triggering auto-save.
* [test_server](https://github.com/brysgo/test_server) lets you use F9 thru F12 to run specs and report the output in vim.
* [vim-simple-bdd](https://github.com/mdelillo/vim-simple-bdd) generates method declarations from [simple_bdd](https://github.com/robb1e/simple_bdd) steps

## Colorschemes
* [Vivid Chalk](https://github.com/tpope/vim-vividchalk)
* [Molokai](https://github.com/tomasr/molokai)
* [Solarized](http://ethanschoonover.com/solarized) ([github](https://github.com/altercation/vim-colors-solarized))
* [ir_black](https://github.com/wesgibbs/vim-irblack)
* [tomorrow](https://github.com/chriskempson/vim-tomorrow-theme)
* [candycode](http://www.vim.org/scripts/script.php?script_id=1635)
* Color-Sampler-Pack
* [colorschemes](https://github.com/flazz/vim-colorschemes)
* [base16](https://github.com/chriskempson/base16-vim)
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

## Languages
* [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [vim-slim](https://github.com/slim-template/vim-slim)
* [vim-handlebars](https://github.com/nono/vim-handlebars)
* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-haml](https://github.com/tpope/vim-haml)
* [vim-cucumber](https://github.com/tpope/vim-cucumber)
* [vim-cucumber-align-pipes](https://github.com/quentindecock/vim-cucumber-align-pipes)
* [mustache.vim](https://github.com/juvenn/mustache.vim)
* [vim-go](https://github.com/fatih/vim-go)
* [scala-vim-support](https://github.com/rosstimson/scala-vim-support)
* [vim-clojure-static](https://github.com/guns/vim-clojure-static)
* [csv.vim](https://github.com/chrisbra/csv.vim)
* [vim-elixir](https://github.com/elixir-lang/vim-elixir)
* [vim-json](https://github.com/elzr/vim-json)
* [vim-jst](https://github.com/briancollins/vim-jst)
* [vim-jade](https://github.com/digitaltoad/vim-jade)
* [vim-pug](https://github.com/digitaltoad/vim-pug)
* [vim-jsx](https://github.com/mxw/vim-jsx)
* [elm.vim](https://github.com/lambdatoast/elm.vim)

# Advanced

## Updating manually

First, fetch the latest vim-config via Git. You can also rebase or merge your
own project-specific customizations.

To install the necessary bundles:

    vim +PluginInstall +qall # or run :PluginInstall within Vim

To upgrade bundles to their latest version, use the bang version:

    vim +PluginInstall! +qall # or run :PluginInstall! within Vim

## tmux support (optional)

If you will be using VIM with tmux for remote pairing or window management, see
the [pivotal/tmux-config README](https://github.com/pivotal/tmux-config).
