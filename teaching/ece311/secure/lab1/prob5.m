function func_problem5()


% define the vector x
x = [0 0 0 2 0 1 -1 3 0 0 0];
% define the index for vector x 
nx = [-3 : 1 : 7];

% define the index for y1,y2,y3,y4
ny1 = [-3+2:1:7+2]; % for y1 = x[n-2]
ny2 = [-3-1:1:7-1]; % for y1 = x[n+1]
ny3 = [-7 : 1 : 3];
ny4 = [-7+1 : 1 : 3+1];


%plot x
figure(1),
    subplot(3,1,1)
    stem(nx,x)
    title('Plot for x[n]'),xlabel('Time Index'), ylabel('x[n]')

%plot y1
    subplot(3,1,2)
    stem(ny1,x)
    title('Plot for y1[n]'),xlabel('Time Index'), ylabel('y1[n]')
%plot y2
    subplot(3,1,3)
    stem(ny2,x)
    title('Plot for y2[n]'),xlabel('Time Index'), ylabel('y2[n]')
    
 %plot y3 - note : fliplr flips its argument from left to right
 figure(2)
    subplot(3,1,1)
    stem(nx,x)
    title('Plot for x[n]'),xlabel('Time Index'), ylabel('x[n]')
    
    subplot(3,1,2)
    stem(ny3,fliplr(x))
    title('Plot for y3[n]'),xlabel('Time Index'), ylabel('y3[n]')
    
%plot y4
    subplot(3,1,3)
    stem(ny3,fliplr(x))
    title('Plot for y4[n]'),xlabel('Time Index'), ylabel('y4[n]')    