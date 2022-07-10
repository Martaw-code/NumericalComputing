function  w  = RK4( f,a,b,h,alpha )
% Mètode RK4
t = [a:h:b];
N = length(t);
w(1) = alpha;
for i=1:N-1
    K1 = h*f(t(i),w(i));
    K2 = h*f(t(i)+h/2,w(i)+K1/2);
    K3 = h*f(t(i)+h/2,w(i)+K2/2);
    K4 = h*f(t(i+1),w(i)+K3);
    w(i+1)=w(i)+(K1+2*K2+2*K3+K4)/6;
end
end