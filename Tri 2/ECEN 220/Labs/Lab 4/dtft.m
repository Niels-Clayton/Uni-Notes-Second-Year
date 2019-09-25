function [X] = dtft(x, n, omega)    
    V = exp(-1j*omega*n');
    X = V*x;
end
