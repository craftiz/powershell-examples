if has('multi_byte')                   " multibyte features compiled-in 
  if &encoding !~? '^u'                " the OS locale is not Unicode 
    if &termencoding == ''             " empty means 'use &enc' 
      let &termencoding = &encoding    " avoid clobbering keyboard codes 
    endif 
    set encoding=utf-8 " we can do it, now that the kb is taken care of 
  endif 
  set fileencodings=ucs-bom,utf-8,latin1 " heuristics for existing files 
  setglobal bomb fileencoding=latin1   " defaults for new files 
                     " 'bomb' doesn't apply to latin1 
                     " it applies when 'fenc' is manually set to Unicode 
endif
