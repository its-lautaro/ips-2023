% Sistema S3
function y = sistema_S3(x);
  y = [];
  y(1)= (1/4)*x(1)+0;
  for k=2:length(x)
    y(k) = (1/4)*x(k) + (1/4)*x(k-1) + (1/2)*y(k-1);
  endfor
 end
