function func_problem2()

%initialize k and n
n = [0:9];
k = [1 2 4 6];

[rows cols] = size(k);
figure(1),title('Problem 3')
hold on
for cnt = 1 : cols
    x = sin(2*pi*k(cnt)*n/5);
    figure(1),subplot(4,1,cnt)
    stem(x);
    xlabel('Time Index n')
    ylabel(strcat('x_{',num2str(k(cnt)),'}[n]'))
%    hold on
end
