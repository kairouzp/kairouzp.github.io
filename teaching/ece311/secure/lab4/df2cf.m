function [bc, ac] = df2cf(b,a)
%[bc, ac] = df2cf(b,a)
% convert from direct from to a cacade of 
% second order subsections.

N= length(b)-1;

z = roots(b);
p = roots(a);

for k=1:N/2
    bc(k,:) = poly(z(2*k-1:2*k));
    ac(k,:) = poly(p(2*k-1:2*k));
end
bc(1,:) = b(1)*bc(1,:);