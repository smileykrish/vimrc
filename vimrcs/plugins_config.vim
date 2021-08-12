"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
"let s:vim_runtime = expand('<sfile>:p:h')."/.."
"call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
"call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
"call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
"call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vmap Si S(i_<esc>f)
"au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
let g:gitgutter_highlight_lines=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
let g:gitgutter_max_signs = 1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F8> :TlistToggle<CR>
"map <F9> :TlistAddFilesRecursive $BASE_DIR."/src" *.cc <CR> :TlistAddFilesRecursive $BASE_DIR."/src" *.h <CR>
map <F9> :TlistAddFilesRecursive src *.cc<CR>:TlistAddFilesRecursive src *.h<CR>
let Tlist_Auto_Open = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => cscope_map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocscopeverbose  "fixs the Cscope Issue: duplicate cscope database not added

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MRU
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> :MRU<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-commentary 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType cpp setlocal commentstring=\/\/\ %s
autocmd FileType bash setlocal commentstring=#\ %s
autocmd FileType vim setlocal commentstring="\ %s



let g:airline#extensions#tabline#enabled = 1

let g:DirDiffExcludes = "*.git, tags, *.patch, *.files"
