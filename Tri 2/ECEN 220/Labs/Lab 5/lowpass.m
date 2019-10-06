function [h, n] = lowpass(L, M)    
    n = -L:L;
    h = M.*(sin((pi.*n)./M))./(pi.*n);
    h(L+1) = 1;
end