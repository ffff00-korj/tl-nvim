if exists('b:current_syntax') 
  finish
endif

" === Комментарии ===
syntax match tlComment "//.*" contains=@Spell
syntax region tlCommentBlock start="/\*" end="\*/" contains=@Spell

" === Секции ===
syntax match tlSection "---types---"
syntax match tlSection "---functions---"

" === Комбинаторы и типы ===
syntax match tlType "\<[A-Z][a-zA-Z0-9_]*\>"
syntax match tlCombinator "\<[a-z][a-zA-Z0-9_]*\>\(#[a-fA-F0-9]\{1,8\}\)\?" contains=tlMagic

" === Модификаторы/атрибуты ===
syntax match tlModifier "@\<\(read\|write\|readwrite\|any\|kphp\|internal\)\>"

" === Поля и переменные ===
syntax match tlField "\<[a-zA-Z_][a-zA-Z0-9_]*\>:\@="
syntax match tlVariable "\<[a-z_][a-zA-Z0-9_]*\>"

" === Числовые константы ===
syntax match tlNumber "\<\d\+\>"
syntax match tlMagic "#[a-fA-F0-9]\{6,8\}"

" === Строки ===
" Упрощенная версия - убрал проблемный regex
syntax region tlString start=+"+ skip=+\\"+ end=+"+ contains=@Spell

" === Ключевые слова ===
syntax keyword tlKeyword type function return if else for while
syntax match tlPunctuation "[{}()\[\];=\.]"

" === Подсветка ===
highlight default link tlComment Comment
highlight default link tlCommentBlock Comment
highlight default link tlSection String
highlight default link tlType Type
highlight default link tlCombinator Function
highlight default link tlModifier PreProc
highlight default link tlField Identifier
highlight default link tlVariable Identifier
highlight default link tlNumber Number
highlight default link tlMagic Number
highlight default link tlString String
highlight default link tlKeyword Keyword
highlight default link tlPunctuation Delimiter

let b:current_syntax = "tl"
