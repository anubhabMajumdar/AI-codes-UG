function [val] = minimum_mismatch(cur, goal)

x = cur - goal;
[indexes] = find(x == 0);

val = 9 - numel(indexes);

end
