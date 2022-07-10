function  w  = EulerMod( f,a,b,h,alpha )    % Ordre 0(h^2)
    % Mètode d'Euler Modificat o punto medio
    t = [a:h:b];
    N = length(t);
    w(1) = alpha;
    for i=1:N-1
        K1 = w(i)+h/2*f(t(i),w(i));
        w(i+1) = w(i)+h*f(t(i)+h/2,K1);
    end
end