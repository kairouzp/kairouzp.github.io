function func_problem4()

%initialize variables

n = [0:31];

% initialize the signals
x1 = sin(pi*n/4) .* cos(pi*n/4);
x2 = cos(pi*n/4).^2;
x3 = sin(pi*n/4) .* cos(pi*n/8);

%store the 3 vectors in a matrix
x = [x1;x2;x3];

for cnt = 1 : 3
 figure,
 stem(x(cnt,:))
 title(strcat('Plot for signal x_{',num2str(cnt),'}[n]'))
 xlabel('Time Index n')
 ylabel(strcat('x_{',num2str(cnt),'}[n]'))
end
