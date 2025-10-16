if exists('b:current_syntax') | finish |  endif

syntax match tlMagic "\v\#[a-f0-9]+"
syntax match tlAttribute "\v\@<[a-z]*>"
syntax match tlComment "//.*"
syntax match tlTypesBanner "---types---"
syntax match tlFunctionsBanner "---functions---"

highlight default link tlMagic Number
highlight default link tlComment Comment
highlight default link tlAttribute PreProc
highlight default link tlTypesBanner Delimiter
highlight default link tlFunctionsBanner Delimiter

let b:current_syntax = "tl"
