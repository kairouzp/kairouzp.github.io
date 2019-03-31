function qc = quant(x,N,M)
% QUANT Q = QUANT(x,N,M) quantizes the values of x(n) into
%           2^N values. The argument M is the value of the 
%           maximum amplitude of x[n]

[mm, nn] = size(x);
qc = zeros(mm,nn);
levels = 2^(N-1);
maxlevel = 2^N-1;

for  k = 1 : mm
    tmp = fix((x(k,:)+M)./(M/levels));
    q = zeros(1,nn);
    q(tmp <= maxlevel) = tmp(tmp <= maxlevel);
    q(tmp > maxlevel) = maxlevel * ones(1,length(tmp(tmp>maxlevel)));
    q(tmp < 0) = zeros(size(tmp(tmp < 0)));
    q = (q- levels)*M/levels;
    qc(k,:)=q;
end