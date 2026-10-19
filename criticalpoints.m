%[text] The critical points of an example function.
%%
syms x y
%%
f(x,y) = x^3 + 3*x*y^2 - 15*x - 12*y
%%
fx = diff(f,x)
fy = diff(f,y)
fxy = diff(fx,y)
fxx = diff(fx,x)
fyy = diff(fy,y)
%%
sol = solve([fx(x,y)==0,fy(x,y)==0],[x,y])
%%
sol.x
sol.y
%%
for i=1:4
    disp([sol.x(i),sol.y(i)])
end
%%
rad =0.1
a=2
b= 1
fsurf(f(x,y),[a- rad, a+rad, b-rad, b+rad])

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":51}
%---
