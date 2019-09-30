" keyboard settings
" set mapleader to space
let mapleader=" "

" open color display 
syntax on

" set [({
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i


" display number of line
set number
set norelativenumber

" change the move press
" j = left, l = right, i = up, k = down
noremap k j
noremap i k
noremap n i
noremap j h


" move 5 lines per press
noremap U 5k
noremap E 5j

" split screen
" split screen to right(cursor is on the right screen)
map sr :set splitright<CR>:vsplit<CR>
" split screen to left
map sl :set nosplitright<CR>:vsplit<CR>
" split screen to upward
map su :set nosplitbelow<CR>:split<CR>
" split screen to downward
map sd :set splitbelow<CR>:split<CR>
" move cursor from a screen to another
" move to right 
map <LEADER>l <C-w>l
" move to up
map <LEADER>i <C-w>k
" move to left
map <LEADER>j <C-w>h
" move to down
map <LEADER>k  <C-w>j
" chage the size of splited screen
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
" change the method to split
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" open label
map tu :tabe<CR>
map tn :-tabnext<CR>
map ti :+tabnext<CR>

" when search st, press return to move the cursor
" = to move up, - to move down
noremap = nzz
noremap - Nzz
" close the highlight of search space + return
noremap <LEADER><CR> :nohlsearch<CR>
" highlight search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase

set smartcase
" there should be an underline on the line of cursor
set cursorline
set wrap
set showcmd

set wildmenu
"close s
map s <nop>
" S to save, and Q to quit
map S :w<CR>
map Q :q<CR>
" R to source
map R :source $MYVIMRC<CR>

" to visit the beginning of a line or the end
" move cursor to the beginning of the line
noremap bb ^
" move cursor to the end of the line
noremap ee $

" run .py in vim
map rpy :! clear; python3 %<CR>

" run .java in vim 
map jc :!javac %<CR>
map rj :!java %<CR>

" install plug-in with plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'nanotech/jellybeans.vim'
" plug-in for markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" vimtex
Plug 'lervag/vimtex'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'

" a color scheme
Plug 'altercation/vim-colors-solarized'

Plug 'jnurmine/Zenburn'

Plug 'morhetz/gruvbox'
call plug#end()

" color scheme
color gruvbox
set bg=dark
let g:gruvbox_contrast_dark='hard'
"configs and maps for plugin

" map for plug

map pi :PlugInstall<CR>

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/usr/local/bin/python"
let g:ycm_python_binary_path = "/usr/local/bin/python"
let g:ycm_python_sys_path = ['/Users/ccy/PycharmProjects/untitled', '/Applications/PyCharm.app/Contents/helpers/pydev', '/Users/ccy/PycharmProjects/untitled', '/Applications/PyCharm.app/Contents/helpers/pycharm_display', '/Applications/PyCharm.app/Contents/helpers/third_party/thriftpy', '/Applications/PyCharm.app/Contents/helpers/pydev', '/Library/Frameworks/Python.framework/Versions/3.7/lib/python37.zip', '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7', '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/lib-dynload', '/Users/ccy/PycharmProjects/untitled/venv/lib/python3.7/site-packages', '/Users/ccy/PycharmProjects/untitled/venv/lib/python3.7/site-packages/setuptools-40.8.0-py3.7.egg', '/Users/ccy/PycharmProjects/untitled/venv/lib/python3.7/site-packages/pip-19.0.3-py3.7.egg', '/Applications/PyCharm.app/Contents/helpers/pycharm_matplotlib_backend', '/Users/ccy/PycharmProjects/untitled']
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === vim-table-mode
" ===

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>


" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

" config of markdown
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

"mappings for markdown
map <LEADER>mp :MarkdownPreview<CR>
map <LEADER>ms :MarkdownPreviewStop<CR>
" map <LEADER>mt :MarkdownPreviewToggle<CR>
map <LEADER>tm :TableModeToggle<CR>

" setting for vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" settings for vim latex preview
autocmd Filetype tex setl updatetime=100
" to prevent the cursor hold
let g:livepreview_previewer = 'evince'
let g:livepreview_cursorhold_recompile = 0
" a map to LLPStartPreview
map LP :LLPStartPreview<CR>
