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
syntax match tlType "\<[A-Z]\w*\>"
syntax match tlCombinator "\([a-z]\w*\.\)\?[a-z]\w*\(#[[:xdigit:]]\{1,8}\)\?" contains=tlMagic

" === Модификаторы/атрибуты ===
syntax match tlModifier "@\<\(read\|write\|readwrite\|any\|kphp\|internal\)\>"

" === Поля и переменные ===
syntax match tlField "\w\+\s*:"me=e-1
syntax match tlVariable "\<[a-z_]\w*\>" contained

" === Числовые константы ===
syntax match tlNumber "\<\d\+\>"
syntax match tlMagic "#[[:xdigit:]]\{1,8\}"

" === Строки ===
syntax match tlString "\w\+\.\d\+\?"
syntax region tlString start=+"+ skip=+\\"+ end=+"+ contains=@Spell

" === Ключевые слова и управляющие конструкции ===
syntax match tlKeyword "\(%\|]\)\?\([a-z]\w*\.\)\?\w\+\>\(<\|(\)\?" contains=tlType,tlCombinator

" === Скобки и пунктуация ===
syntax match tlPunctuation "[{}()\[\];=\.]"
syntax match tlBold "[%]"

" === Повторяющиеся секции ===
syntax region tlRepeated start="\w*\s*\*\(\s*\)\?\[" end="\]" contains=tlNumber,tlCharacter,tlComment,tlField,tlPunctuation

" === Шаблонные аргументы ===
syntax region tlTemplate start="{" end="}" contains=tlComment,tlVariable,tlKeyword,tlPunctuation

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
highlight default link tlBold Bold
highlight default link tlCharacter Character
highlight default link tlRepeated Structure
highlight default link tlTemplate Structure

let b:current_syntax = "tl"
