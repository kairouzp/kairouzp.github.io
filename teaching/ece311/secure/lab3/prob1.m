N = 20;
f1 = 1e3;
f2 = 1.4e3;

omegas = 2*pi*1e4;
T = 2*pi/omegas;
n = [0 : N-1];
x = cos(2*pi*f1*T*n) + cos(2*pi*f2*T*n);
XF = fft(x,N);

XF = [XF(N/2+1:N) XF(1:N/2)];
fq = [-N/2:N/2-1]/N*(1/T);
plot(fq,10*log10(abs(XF)));
axis([-1/T/2 1/T/2 -inf inf]);
xlabel('Frequency (Hz)');
grid;
