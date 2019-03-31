% Part ( a ) i
z = 1+j * 0.3 ;
plot( z,'*')
hold on

% Part ( a ) i i
b = exp(-(1+j * 0.2)) ;
plot (b,'o')

% Part ( a ) i i i
theta = linspace(0 ,2*pi , 1001) ;
q = exp (j*theta) ;
plot(q)
axis equal

%part (b)
n = 0: 99;
plot(exp(0.025*(1-j)*n),'x')
legend ( '1 + j 0.3' , 'exp{-(1+j0.2 )}' , 'Unit circle' , 'exp{0.025(1-j )}' , 'Location','northwest')
title('Part (a)i-(a)iii and Part (b)'), xlabel('Real'),ylabel('Imaginary'), grid on

%part (c)
figure, subplot(2,1,1)
stem(real (exp(0.025*(1-j)*n)))
title('Part(c)'),xlabel('Samples'),ylabel('Real Amplitude')
subplot(2,1,2)
stem( imag(exp(0.025*(1 - j)*n)))
xlabel('Samples'),ylabel('Imaginary Amplitude')

%part (d)
% Part (d)
[x,y] = meshgrid(0:0.01:0.99,0:0.01:0.99) ;
z = x + j *y ;
fz = abs((z -0.3)./(z-0.85*exp(j*pi/4))) ;
figure,
mesh(x,y,fz)
title('Part (d)'),zlabel('Magnitude'),xlabel('Real z'), ylabel('Imaginary z')