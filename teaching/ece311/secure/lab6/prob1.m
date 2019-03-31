
close all;
clear all;

% Problem 3 (a)
% Retangualr window with N = 21
N = 21;

h = sin(pi/4*([0:N-1]-(N-1)/2))./(pi*([0:N-1]-(N-1)/2)); % Time-shift
h((N-1)/2+1) = 1/4;

figure(1);
stem([0:N-1],h);
axis([0 N-1 -0.1 0.3]);
title('Impulse response - Rectangular window with N=21');

figure(2);
H = fft(h,4096);
w = [0:4095]*2*pi/4096;
subplot(2,1,1)
plot(w(1:2049),abs(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Magnitude H_d(\omega)');
title('Magnitude response for Problem 1(a)');
grid;



subplot(2,1,2)
plot(w(1:2049),angle(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Phase \angle H_d(\omega)');
title('Phase response for Problem 1(a)');
grid;



% Problem 3 (b)
% Hamming window
wp = 0.54 - 0.46*cos(2*pi*[0:N-1]/(N-1));
h = sin(pi/4*([0:N-1]-(N-1)/2))./(pi*([0:N-1]-(N-1)/2)); % Time-shift
h((N-1)/2+1) = 1/4;
h = h.*wp; % Truncation

figure(4);
stem([0:N-1],h);
axis([0 N-1 -0.1 0.3]);
title('Impulse response - Hamming window with N=21');


figure(5);
H = fft(h,4096);
w = [0:4095]*2*pi/4096;
subplot(2,1,1)
plot(w(1:2049),abs(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Magnitude H_d(\omega)');
title('Magnitude response for Problem 1(b)');
grid;


subplot(2,1,2)
plot(w(1:2049),angle(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Phase \angle H_d(\omega)');
title('Phase response for Problem 1(b)');
grid;


% Problem 3 (c)
% Retangualr window with N = 121
N = 121;

h = sin(pi/4*([0:N-1]-(N-1)/2))./(pi*([0:N-1]-(N-1)/2)); % Time-shift
h((N-1)/2+1) = 1/4;

figure(7);
stem([0:N-1],h);
axis([0 N-1 -0.1 0.3]);
title('Impulse response - Rectangular window with N=121');


figure(8);
H = fft(h,4096);
w = [0:4095]*2*pi/4096;
subplot(2,1,1)
plot(w(1:2049),abs(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Magnitude H_d(\omega)');
title('Magnitude response for Problem 1(c)');

grid;

subplot(2,1,2)
plot(w(1:2049),angle(H(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Phasee H_d(\omega)');
title('Phase response for Problem 1(c)');
grid;
print -dmeta sol3_9
