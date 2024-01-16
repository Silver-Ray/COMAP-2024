function [c1,c2] = opme(a,b,c)
    t=nargin;
    if nargin<2
        b=1;
    end
    c1=a+b;
    c2=a-b;
end