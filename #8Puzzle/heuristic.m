function [heuristic_values] = heuristic(open_list, goal, name)

[n,~] = size(open_list);
heuristic_values = zeros(n,1);

for i=1:n
    cur = open_list(i,:);
    if strcmp(name, 'minimum_mismatch')
        heuristic_values(i) = minimum_mismatch(cur, goal);
    elseif strcmp(name, 'manhattan_distance')
        heuristic_values(i) = manhattan_distance(cur, goal);
    end
end
end