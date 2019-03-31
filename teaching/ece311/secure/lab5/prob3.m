%Problem 1

%part (a)
a3=[1 -sqrt(3)/2 0.25];

b3=[0.25 -sqrt(3)/2 1] ;

% plot the poles and zeros
dpzplot(b3,a3);

% get the roots of the numerator and denominator polynomials

zs3 = roots(b3);
ps3 = roots(a3);

% part b
omega = [0:511]*pi/256;
unitcirc = exp(i*omega);

temp1 = ps3*ones(1,512);

polevectors3 = ones(2,1)*unitcirc - ps3*ones(1,512);

polelength3 = abs(polevectors3);
poleangle3 = atan2(imag(polevectors3),real(polevectors3));

% part c

zerovectors3 = ones(2,1)*unitcirc - zs3*ones(1,512);

zerolength3 = abs(zerovectors3);
zeroangle3 = atan2(imag(zerovectors3),real(zerovectors3));

%part d

subplot(2,1,1),plot(omega/pi,polelength3)
xlabel('\omega, (\times \pi)'),ylabel('polelength3'),title('polelength for Problem 3')
subplot(2,1,2),plot(omega/pi,poleangle3)
xlabel('\omega, (\times \pi)'),ylabel('polelength3'),title('poleangle for Problem 3')

figure
subplot(2,1,1),plot(omega/pi,zerolength3)
xlabel('\omega, (\times \pi)'),ylabel('zerolength3'),title('zerolength for Problem 3')
subplot(2,1,2),plot(omega/pi,zeroangle3)
xlabel('\omega, (\times \pi)'),ylabel('polelength3'),title('zeroangle for Problem 3')

%part e
geomH3mag = 0.25*((zerolength3(1,:).*zerolength3(2,:))./(polelength3(1,:).*polelength3(2,:)));

plot(omega/pi,round(20*log(geomH3mag)));


%xlabel('Frequency (\times \pi) '); ylabel('Magnitude(dB)'); title('Magnitude response of H_3(z) - using Geometric Technique');
grid on;
% using freqz
freqz(b3,a3,512,'whole');