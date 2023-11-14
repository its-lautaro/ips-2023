% Funcion delta
function d = delta(n);
  d = [];
  for k= 1:n
    d = [d [0]];
  endfor
  d(1)=1;
 end
