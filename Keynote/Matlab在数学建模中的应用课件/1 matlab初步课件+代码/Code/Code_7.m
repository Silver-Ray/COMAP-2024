%% if
a=1;b=2;c=1;
delta=b^2-4*a*c;
if delta>0
    x(1)=(-b+sqrt(delta))/2/a;
    x(2)=(-b-sqrt(delta))/2/a;
elseif delta==0
    x=(-b+sqrt(delta))/2/a;
else
    x=[];
end

%% switch
a=1;b=2;c=1;
delta=b^2-4*a*c;
switch sign(delta)
    case 1
    x(1)=(-b+sqrt(delta))/2/a;
    x(2)=(-b-sqrt(delta))/2/a;
    case 0
    x=(-b+sqrt(delta))/2/a;
    otherwise
    x=[];
end

%% for
s=10;
H = zeros(s);
for i = 1:s
    for j = 1:s
        H(ii,jj) = 1/(ii+jj-1);
    end
end

%% while
n = 10;
f = n;
while n > 1
    n = n-1;
    f = f*n;
end

%% break
limit = 0.8; s = 0;
while 1
    tmp = rand;
    if tmp > limit
        break
    end
    s = s + tmp;
end

%% continue
limit = 0.8; s = 0;
while 1
    tmp = rand;
    if tmp > limit
        continue
    end
    s = s + tmp;
end

%% ³õÊ¼»¯¿Õ¼ä
x=sin(0:0.001:1e5);
tic
for ii=2:(length(x)-1)
    y(ii-1)=(x(ii-1)+x(ii+1))/2;
end
toc

x=sin(0:0.001:1e5);
tic
y=zeros(1,length(x)-2);
for ii=2:(length(x)-1)
    y(ii-1)=(x(ii-1)+x(ii+1))/2;
end
toc



