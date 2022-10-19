" Author: Matheus Lima <matheus.limastack@gmail.com>

if exists('g:loaded_spongebob_stupid')
  finish
end

let g:loaded_spongebob_stupid = 1

let s:save_cpo = &cpo
set cpo&vim

command! -range=% -bang SpongeBobStupid lua require'spongebob/stupid'.format(<line1>, <line2>)

let &cpo = s:save_cpo
unlet s:save_cpo
