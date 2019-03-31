
close all;
clear all;

% Problem 4 (b)
N = 121;

H = exp(-j*(N-1)/2*(2*pi/N*[0:N-1]));
H(17:106) = 0;
h = ifft(H,121);

figure(1);
stem([0:N-1],h);
axis([0 N-1 -0.1 0.3]);
title('Impulse response for an LPF - N=121');


Hf = fft(h,4096);

figure(2);
w = [0:4095]*2*pi/4096;
subplot(2,1,1)
plot(w(1:2049),abs(Hf(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Magnitude |H_d(\omega)|');
title('Magnitude response for LPF - N=121');
grid;


subplot(2,1,2)
plot(w(1:2049),angle(Hf(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Phase \angle H_d(\omega)');
title('Magnitude response for LPF - N=121');
grid;


% Problem 4 (c)
z = (-1).^[0:N-1];
h = z.*h;

figure(4);
stem([0:N-1],h);
axis([0 N-1 -0.1 0.3]);
title('Impulse response for an HPF - N=121');




Hf = fft(h,4096);

figure(5);
w = [0:4095]*2*pi/4096;
subplot(2,1,1)
plot(w(1:2049),abs(Hf(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Magnitude |H_d(\omega)|');
title('Magnitude response for HPF - N=121');
grid;

subplot(2,1,2)
plot(w(1:2049),angle(Hf(1:2049)));
axis([0 pi -inf inf]);
xlabel('Frequency \omega');
ylabel('Phase \angle H_d(\omega)');
title('Magnitude response for HPF - N=121');
grid;


