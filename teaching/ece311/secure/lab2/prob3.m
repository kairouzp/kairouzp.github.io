function [convOp] = func_problem3(x,y,zp)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function performs the circular convolution of  %
% the sequences x[n] and y[n]. the function assumes   %
% the inputs are row vectors                          %
%                                                     %
% Input  :  x  = first input sequence x[n]            %
%           y  = second input sequence y[n]           %
%           zp = number of zeros to be added          %
%                                                     %
% Output : convOp = Circularly convolved output       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lenx = length(x);          % get the length of x

leny = length(y);          % get the length of y

% make the sequence lengths equal
x = [x zeros(1,leny-lenx)];
y = [y zeros(1,lenx-leny)];

% perform the convolution in the transform domain by taking
% the DFT of the inputs and multiplying point-by-point the 
% transformed vectors and then taking the inverse transform
% the dft is taken by zero-padding the inputs based on the
% parameter zp

x = [x zeros(1,zp)];
y = [y zeros(1,zp)];

convOp = ifft(fft(x) .* fft(y));


