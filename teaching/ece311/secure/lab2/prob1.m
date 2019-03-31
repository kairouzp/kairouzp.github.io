function [dftOp] = func_myDFT(N,x)


% make the input into a row vector
[row,col] = size(x);

if (row~=1) 
    x = x.';
end

% create N 'DFT exponentials' between (0,2*pi)
dftCoeff = exp((2*pi*i/N)*(0 : N-1))';

% get the length of the input vector
M = length(x);

% Initialize the output - dftOp 
dftOp = zeros(1,N);

% zero-pad if the length of input is less than N
if (M < N)
    x = [x zeros(1,N-M)];
end

% loop to compute DFT - note x(1:N) picks N samples of the input
for cnt = 1 : N
    dftOp(cnt) = x(1:N) * (dftCoeff .^ (cnt-1));
end