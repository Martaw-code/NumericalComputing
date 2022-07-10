function [ w ] = Euler(f,a,b,h,alpha)    % Ordre 0(h)
    % Mètode d'Euler
    t = [a:h:b];
    N = length(t);
    w(1) = alpha;
    for i = 1:N-1
        w(i+1) = w(i)+h*f(t(i),w(i));
    end
end