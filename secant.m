function Xs = Secant(Fun, Xa, Xb, Err, imax)
  for i=1:imax
    Xi = Xest - Fun(Xb) / ((Fun(Xb) - Fun(Xa)) / (Xb - Xa));
    if abs((Xi - Xest)/Xest) < Err
       Xs = Xi
       break
    endif
    Xa = Xb;
    Xb = Xi;
  endfor
  if i == imax
    fprintf("Solution was not obtained in %i iterations.\n", imax);
    Xs = ('No answer');
  endif
  
  
endfunction
