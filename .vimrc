" Включаем подсветку синтаксиса и определение типа файла
syntax on
filetype plugin indent on

" Интерфейс
set number              " Показать номера строк
" set relativecolumn      " (Опционально) Относительные номера для быстрых прыжков
" set cursorline          " Подсвечивать текущую строку
set termguicolors       " Поддержка 24-битного цвета (если терминал позволяет)
set mouse=a
set splitright   " Вертикальные сплиты открываются справа
set splitbelow   " Горизонтальные сплиты открываются снизу
" colorscheme void " моя тема
colorscheme apple " на базе Apple System Colors

" Поиск
set hlsearch            " Подсвечивать совпадения
set incsearch           " Искать по мере набора
set ignorecase          " Игнорировать регистр при поиске
set smartcase           " ...но учитывать его, если есть заглавные буквы

" Отступы (Табы — это пробелы, 4 штуки)
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

" Служебное
set encoding=utf-8
set undofile            " Сохранять историю изменений после закрытия файла
set clipboard=unnamed,unnamedplus " Использовать системный буфер обмена

" Показать highlight группу при нажатии z
function! GetSyntaxGroup()
  let l:s = synID(line('.'), col('.'), 1)
  echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunction

nnoremap z :call GetSyntaxGroup()<CR>

" Подсветка скопированного текста
let g:highlightedyank_max_lines = 1000
let g:highlightedyank_highlight_duration = 200
