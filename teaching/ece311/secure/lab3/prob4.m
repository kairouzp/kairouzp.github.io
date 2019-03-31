function [y] = func_prob4a(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to compute the output of system%
% II : y[n]=(3/5)^ny[n-1]+x[n]            %
%                                         %
% Input :   x = input vector              %
% Output:   y = output of system II       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% find the number of samples in the input - in this
% case noSamples = 19

noSamples = length(x);
%initialize the output vector
y = zeros(1,noSamples);

% set the 'zeroth' sample
y(1) = x(1);
for cnt = 2 : noSamples
    % implement the equation
    y(cnt) = ((3/5)^(cnt-1))*y(cnt-1) + x(cnt);
end