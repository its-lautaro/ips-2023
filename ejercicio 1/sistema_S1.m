% Sistema S1
function y = sistema_S1(x);
  y = [];
  y(1)= (1/2)*x(1)+0;
  for k=2:length(x)
    y(k) = (1/2)*x(k) + (1/2)*x(k-1);
  endfor
 end
