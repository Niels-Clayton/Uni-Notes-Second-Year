function [x] = square_wave(f_0, sum_lower, sum_upper) 
    syms q t
    func = (sin(2.*pi.*(2.*q + 1).* f_0.*t))./(2.*q +1);
    x(t) = symsum(func, q, sum_lower, sum_upper) .*(4/pi);
end