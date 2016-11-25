function [val] = manhattan_distance(cur, goal)

cur = reshape(cur, [3,3]);
goal = reshape(goal, [3,3]);
val = 0;

for i=1:3
    for j=1:3
        if cur(i,j) ~=0
            [x,y] = find(goal == cur(i,j));
            val = val + abs(x-i) + abs(y-j);
        end
    end
end
end
        