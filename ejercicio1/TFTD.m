function [X] = TFTD(n,x,s);
  X = zeros(size(s));
  for k = 1:length(s)
    X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
  end
end
