% 用蒙特卡洛模拟扔飞镖
radius = [1 2.5 5 8 12];
goal = [50 25 15 10 5];
n = 1000;
r = 12 * sqrt(rand(1,5*n));
ang = 2 * pi * rand(1,5*n);
x = r .* sin(ang);
y = r .* cos(ang);
temp = zeros(1,5);
average = zeros(1,n);
plot(x,y,'.');
for i = 1:n
    for j = 1:5
        distance = norm([x((i-1)*5+j),y((i-1)*5+j)]-[0,0]);
        if distance < radius(1)
            temp(j) = goal(1);
        elseif distance < radius(2)
            temp(j) = goal(2);
        elseif distance < radius(3)
            temp(j) = goal(3);
        elseif distance < radius(4)
            temp(j) = goal(4);
        elseif distance < radius(5)
            temp(j) = goal(5);
        end
    end
    average(i) = mean(temp);
end

aver = mean(average)
