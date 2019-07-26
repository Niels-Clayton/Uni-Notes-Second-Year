clear all;
% Excercise 2.1 %
syms w R C x s a b

Z = 1/((1/R)+w*C);
Z2 = simplify(Z)  % R/(C*R*w + 1) %
i = 3/Z;

pretty(i)        
%               3
%       3 C w + -
%               R

pretty(Z)
%          1
%       -------
%             1
%       C w + -
%             R

pretty(Z2)
%            R
%        ---------
%        C R w + 1

% Excercise 2.2 %

pretty(subs(i, R, 10e3))
%                 3
%       3 C w + -----
%               10000

pretty(subs(i, w, 2*pi*1000))
%        3
%        - + 6000 pi C
%        R

pretty(subs(i, [R C w],[10e3 100e-9 2*pi*1000]))
%       3 pi     3
%       ---- + -----
%       5000   10000


% Excercise 2.3 %

Y = (3 * s + 13) / (s^2 + 4 * s + 3);
Yp = partfrac(Y);
pretty(Yp)
%         5       2
%       ----- - -----
%       s + 1   s + 3

simplify(Y-Yp)  
% =0






Y2 = collect(Yp);
pretty(Y2)
%         3 s + 13
%        ------------
%          2
%         s  + 4 s + 3

Y= 2*a*s^2 + a^2*s^2 + 3;
pretty(collect(Y))
%          2         2
%        (a  + 2 a) s  + 3

pretty(collect(Y, a))
%         2  2        2
%        a  s  + 2 a s  + 3


% Excercise 2.4 %

y = x^2 + 9*x + 7;
subplot(1,2,1)
ezplot(y)
subplot(1,2,2)
ezplot(y, [0, 10]) %Plots expected graph

% Excercise 2.5 %

solve(x^2 + 4*x + 20)
%       ans =
%  
%         - 2 - 4i
%         - 2 + 4i

solve(x^3 + 4*x + 20)
%         root(z^3 + 4*z + 20, z, 1)
%         root(z^3 + 4*z + 20, z, 2)
%         root(z^3 + 4*z + 20, z, 3)
% No solution found

solve(x^3 + 6*x^2 +11*x + 6 == 0)
%        ans =
%  
%         -3
%         -2
%         -1

factor(x^3 + 2*x + 20) % Nothing to factor

syms y x
[x,y]=solve (x + y == 8, x - y == 2)
%       x =
%        5
%  
%       y =
%        3

clear




% Excercise 2.6 %

syms w t s
X = laplace(3 * heaviside(t-2) + sin(w * t));
pretty(X)
%           w      exp(-2 s) 3
%        ------- + -----------
%         2    2        s
%        s  + w


G = 3/(s+3);
x= ilaplace(X*G);
pretty(x)
% 9 sin(t w) - 3 w cos(t w)                    / exp(6 - 3 t)   1 \     w exp(-3 t) 3
% ------------------------- - heaviside(t - 2) | ------------ - - | 9 + -------------
%            2                                 \       3        3 /          2
%           w  + 9                                                          w  + 9

% Excercise 2.6 %

clear
syms a x
diff(a*x^2) %2*a*x
int(a*x^2)  %(a*x^3)/3
 




