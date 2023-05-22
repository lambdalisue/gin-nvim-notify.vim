function gin#indicator#nvim_notify#start(args) abort
  call luaeval('require("gin_nvim_notify").start(_A[1])', [a:args])
endfunction

function gin#indicator#nvim_notify#write(chunk, args) abort
  call luaeval('require("gin_nvim_notify").write(_A[1], _A[2])', [a:chunk, a:args])
endfunction

function gin#indicator#nvim_notify#close(args) abort
  call luaeval('require("gin_nvim_notify").close(_A[1])', [a:args])
endfunction
