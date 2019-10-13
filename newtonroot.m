function Xs = NewtonRoot(Fun, FunDer, Xest, Err, imax)
  for i=1:imax
    Xi = Xest - Fun(Xest) / FunDer(Xest);
    if abs((Xi - Xest)/Xest) < Err
       Xs = Xi
       break
    endif
    Xest = Xi
  endfor
  if i == imax
    fprintf("Solution was not obtained in %i iterations.\n", imax)
    Xs = ('No answer');
  endif
  
  
endfunction
