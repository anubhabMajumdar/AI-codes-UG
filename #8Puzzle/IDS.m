function [path, depth] = IDS(open_list, closed_list, goal)

path = [];
depth = 0;

while isempty(path)
    depth = depth + 1;
    path = DFS(open_list, closed_list, goal, depth);
end
end