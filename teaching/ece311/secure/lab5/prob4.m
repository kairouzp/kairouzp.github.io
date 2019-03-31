function [H] = freqresp(b,a,w)
% frequency response function
% [H] = freqresp(b,a,w)
% b = numerator coefficients
% a = denominator coefficients a(1)=1
% w = frequency location vector.

%find length of a for implementing the loop for the denominator
lena = length(a);

%find length of b for implementing the loop for the denominator
lenb = length(b);

% initialize the numerator and denominator variables
numerator = 0;
denominator = 1;
for cnt = 0: lenb
    numerator = numerator + b(cnt+1)*exp(-j*w*cnt);
end

for cnt = 0: lena
    denominator = denominator + a(cnt+1)*exp(-j*w*cnt);
end

H = numerator./denominator;