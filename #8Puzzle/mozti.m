inp = [1,2,3,4,5,6,7,8,0];
p = perms(inp);
e = size(p);
m = zeros(3);
count = 1;
for i=362880:-100:1
    temp = p(i,:);
    
    m(1,:) = temp(1:3);
    m(2,:) = temp(4:6);
    m(3,:) = temp(7:9);
    
    showGameBoard(m,num2str(count));
    count = count + 1;
end
    