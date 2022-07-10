function  w  = Heun( f,a,b,h,alpha )     % Ordre 0(h^2)
% Mètode d'Euler Millorat o HEUN
t = [a:h:b];
N = length(t);
w(1) = alpha;
for i=1:N-1
    K1 = h*f(t(i),w(i));
    K2 = h*f(t(i+1),w(i)+K1);
    w(i+1) = w(i)+(K1+K2)/2;
end
end