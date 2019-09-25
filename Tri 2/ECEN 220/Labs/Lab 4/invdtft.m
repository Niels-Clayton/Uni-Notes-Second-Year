function [x] = invdtft(X, n, omega)    
    V = exp(-1j*omega*n');
    x = V\X;
end