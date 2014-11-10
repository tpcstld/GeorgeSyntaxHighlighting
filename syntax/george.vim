" Vim syntax file
" Language: George
" Maintainer: Jerry Jiang (tpcstld)
" Latest Revision: 2014-11-09

if exists("b:current_syntax")
    finish
endif

syn keyword basicLanguageCommands by 
syn keyword basicLanguageCommands on nextgroup=stepId

syn match logicKeywords '&'
syn match logicKeywords '|'
syn match logicKeywords '=>'
syn match logicKeywords '<=>'
syn match logicKeywords '|='
syn match logicKeywords '!'

syn keyword basicLanguageConstants true false

syn keyword predicateLogicKeywords forall exists
syn match predicateLogicKeywords '=='
syn match predicateLogicKeywords '!='

syn keyword transformationalProofCommands comm assoc contr lem 
syn keyword transformationalProofCommands impl contrapos simp1 simp2 
syn keyword transformationalProofCommands distr dm neg equiv 
syn keyword transformationalProofCommands idemp
syn keyword transformationalProofCommands forall_over_and exists_over_or
syn keyword transformationalProofCommands swap_vars move_forall
syn match transformationalProofKeywords '<==>'

syn keyword naturalDeductionCommands and_i and_e or_i lem
syn keyword naturalDeductionCommands imp_e not_e not_not_i not_not_e
syn keyword naturalDeductionCommands iff_i iff_e trans iff_mp
syn keyword naturalDeductionCommands exists_i forall_e
syn keyword naturalDeductionCommands eq_i eq_e
syn keyword naturalDeductionCommands premise

syn keyword NDSubproofCommands raa cases imp_i forall_i exists_e
"syn keyword NDSubproofKeywords disprove case assume
"syn match NDSubproofKeywords 'for every'
"syn match NDSubproofKeywords 'for some'

syn keyword setCommands set
syn keyword setConstants empty univ
"syn keyword setKeywords in sube sub pow union inter
"syn keyword setKeywords card gen_U dom ran id iter
syn match setKeywords '|>' 
syn match setKeywords '|->'
syn match setKeywords '<|'
syn match setKeywords '<-|'
syn match setKeywords '(+)'
syn match setKeywords ';'

syn keyword semanticTableauxCommands and_nb not_and_br
syn keyword semanticTableauxCommands or_br not_or_nb
syn keyword semanticTableauxCommands imp_br not_imp_nb
syn keyword semanticTableauxCommands not_not_nb
syn keyword semanticTableauxCommands iff_br not_iff_br
syn keyword semanticTableauxCommands forall_nb not_forall_nb
syn keyword semanticTableauxCommands exists_nb not_exists_nb
syn keyword semanticTableauxCommands closed

syn match stepId '\d\+'
syn match stepNumber '\d\+)'

syn match comments '%.*$'
syn match commands '#.*$'

" Syntax Highlighting

let b:current_syntax = "george"

hi def link comments Comment
hi def link commands PreProc

hi def link basicLanguageCommands Keyword

hi def link basicLanguageConstants Constant
hi def link setConstants Constant

hi def link transformationalProofCommands Type
hi def link naturalDeductionCommands Type
hi def link NDSubproofCommands Type
hi def link setCommands Type
hi def link semanticTableauxCommands Type

hi def link predicateLogicKeywords Special
hi def link logicKeywords Special
"hi def link NDSubproofKeywords Special
hi def link setKeywords Special
hi def link transformationalProofKeywords Special

hi def link stepNumber Identifier
hi def link stepId Identifier
