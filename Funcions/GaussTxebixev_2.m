function [x, w] = GaussTxebixev_2(n)
    w = pi/n.*ones(1,n);
    k = 1:n;
    x = cos((2.*k-1).*pi./(2*n));
end