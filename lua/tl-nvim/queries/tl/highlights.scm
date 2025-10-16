; Комментарии
(comment) @tlComment

; Hex цвета (магия)
((word) @tlMagic
 (#match? @tlMagic "^#[a-fA-F0-9]+$"))

; Атрибуты
((word) @tlAttribute
 (#match? @tlAttribute "^@<[a-z]*>$"))

; Баннеры
"---types---" @tlTypesBanner
"---functions---" @tlFunctionsBanner

; Дополнительные правила для лучшей семантической подсветки
(function_declaration
  name: (word) @function)

(type_declaration
  name: (word) @type)

(variable_declaration
  name: (word) @variable)

(keyword) @keyword
(string_literal) @string
(number_literal) @number
