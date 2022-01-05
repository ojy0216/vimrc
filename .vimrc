set number    " line 표시
set ai    " auto indent
set si " smart indent
set cindent    " c style indent
set shiftwidth=4    " 자동 공백 채움 시 4칸
set tabstop=4    " tab을 4칸 공백으로
set ignorecase    " 검색 시 대소문자 무시
set hlsearch    " 검색 시 하이라이트
set nocompatible    " 방향키로 이동 가능
set fileencodings=utf-8,euc-kr    " 파일 저장 인코딩 : utf-8, euc-kr
set fencs=ucs-bom,utf-8,euc-kr    " 한글 파일은 euc-kr, 유니코드는 유니코드
set bs=indent,eol,start    " backspace 사용가능
set ruler    " 상태 표시줄에 커서 위치 표시
set title    " 제목 표시
set showmatch    " 다른 코딩 프로그램처럼 매칭되는 괄호 보여줌
set wmnu    " tab 을 눌렀을 때 자동완성 가능한 목록
syntax on    " 문법 하이라이트 on
filetype indent on    " 파일 종류에 따른 구문 강조
set mouse=a    " 커서 이동을 마우스로 가능하도록

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/neocomplcache'
Plugin 'preservim/nerdcommenter'
Plugin 'joshdick/onedark.vim'

call vundle#end()

filetype plugin on

" for NERDTree
nmap <F8> :NERDTree<CR>

" for taglist
nmap <F9> :Tagbar<CR>

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 "turn on buffer list

" for vim-diminactive
let g:diminactive_enable_focus = 1

" for auto-pairs
let g:AutoPairsFlyMode = 1

" for neocomplache
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

imap <C-L> <C-o>A;<CR>
map <F10> :bp<CR>
map <F12> :bn<CR>
