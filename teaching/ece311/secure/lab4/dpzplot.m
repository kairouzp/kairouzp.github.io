function dpzplot(b,a)
%dpzplot(b,a)
%plots the pole-zero diagram for the discrete-time system function
%H(z)=b(z)/a(z) defined by numerator and denominator polynomials b and a.

la = length(a);
lb = length(b);
if(la>lb)
    b = [b zeros(1,la-lb)];
elseif (lb > la)
    a = [a zeros(1,lb-la)];
end
ps = roots(a);
zs = roots(b);

mx = max(abs([ps' zs' 0.95])) + 0.5;
clf
axis([-mx mx -mx mx]);
axis('equal');
hold on
w = [0 : 0.01:2*pi];
plot(cos(w),sin(w),'.');
plot([-mx mx],[0 0 ]);
plot([0 0], [-mx mx]);
text(0.1,1.1,'Im','sc');
text(1.1,0.1,'Re','sc');
plot(real(ps),imag(ps),'x');
plot(real(zs),imag(zs),'o');
numz=sum(abs(zs)==0);
nump=sum(abs(ps)==0);
if numz > 1
    text(-0.1,-0.1,num2str(numz));
elseif nump>1
    text(-0.1,-0.1,num2str(nump));
end
hold off