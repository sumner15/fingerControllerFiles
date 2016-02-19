fs = 1000;
flow = 3;
fhigh = 1.5;

f2w = @(x) 2*x/fs;

wlow = f2w(flow);

[Alow, Blow, Clow, Dlow] = butter(2,wlow);
x0low = (eye(size(Alow))-Alow)\Blow*0;
