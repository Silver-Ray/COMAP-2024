%%
%矩阵效率
A=rand(10000); 
B=rand(10000);
tic; 
A.*B; 
toc
[1,2,3;4,5,6,4]
%%
%创建矩阵
zeros(10) %创建10*10的矩阵
zeros(10,20);%创建10*20的矩阵
eye(10);%创建10*10的单位
magic(10);%创建10*10的幻方
rand(10) %创建10*10的均匀分布随机矩阵
randn(10) %创建10*10的正太分布随机矩阵
[xx,yy]=meshgrid(1:100,1:5); %基矩阵
repmat(rand(10),1,5)%扩充矩阵
%%
%矩阵运算
A=rand(10);
B=rand(20);
d1=A*B; %矩阵相乘
d2=A/B; %矩阵右除
d3=A\B; %矩阵左除
d4=A.*B; %矩阵数乘
d5=A./B; %矩阵右数除
d6=A.\B; %矩阵左数除
d7=A+1;%矩阵每个元素加特定值


%%
%矩阵运算
A=rand(10);
d1=inv(A); %矩阵求逆
d2=pinv(A); %矩阵右求伪逆
d3=A'; %矩阵转置
d4=det(A); %求行列式的值
[L,U]=lu(A); %lu分解
[Q,R]=qr(A); %qr分解
[V,E]=eig(A);%矩阵每个元素加特定值

%%
%gpu
tic
A=gpuArray(rand(1e4));
B=A*A;
toc

tic
D=(rand(1e4));
C=D*D;
toc

tic
A=gpuArray(rand(10));
B=A*A;
toc

tic
D=(rand(10));
C=D*D;
toc

%%
%稀疏
ones(5e4);
sparse(5e4,5e4);

