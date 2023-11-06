function [s,X] = TFTD(n,x);
  ds = 0.001; s = [-0.7:ds:0.7]; X = zeros(size(s));
  for k = 1:length(s)
    X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
  end
end
