
% Let x1 and x2 be the signals sampled at 20 kHz so dt=1/(20kHz).
%check for orthogonality between the two signals.
%specify the period to check for orthogonality

f = 2000;
T = 1/f;
tmin = 0;
tmax = 0.5;            
dt = 1/20000;
t = tmin:dt:tmax;
x1 = exp(j*2*pi*t);
x2 = exp(j*2*pi*3*(t-0.1));
subplot(211)
stem(t,x1);
subplot(212)
stem(t,x2);
prod = sum(x1.*x2);
orth=real(round(prod));
if(orth==0) f1= msgbox("The two signals are orthogonal"); 
else  f2= msgbox("The two signals are not orthogonal"); 
end
