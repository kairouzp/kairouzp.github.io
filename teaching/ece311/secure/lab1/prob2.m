function func_problem2()

% Initialize the variables
N = 12; 
M = [4 5 7 10];
[row,cols] = size(M);
time_index = [0 : (2*N-1)]; 

% set the input
%x(1:size(M), : ) = sin(2*pi*M)
for cnt = 1 : cols
    x = sin((2*pi*M(cnt)*time_index)/N);
    figure,
    stem(x)
    title(strcat('Plot of X_{',num2str(M(cnt)),'}[n]'))
    xlabel('Time Index n')
    ylabel('Signal x_M[n]')
    
end