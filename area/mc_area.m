function area = mc_area()
% 计算y = x^2、y = 6-x和x轴y轴围成的面积
% 这里计算第一象限的面积
n=10000;
count1=0;
x=rand(1,n)*10;
y=rand(1,n)*10;
for i=1:10000
   if((y(i)>=x(i)^2)&&(y(i)<=6-x(i))&&y(i)>=0&&x(i)>=0)
       count1=count1+1;
   end
end
a=count1/n;
a=a*10*10
