function [flag, index] = check_list_AStar(item, item_depth, list, list_depth, goal, name)

flag = 0;
index = 0;
[n,~] = size(list);

for i=1:n
    if item == list(i,:) 
        if (heuristic_AStar(item, item_depth, goal, name) < heuristic_AStar(list(i,:), list_depth(i,:),  goal, name))
            flag = 1;
            index = i;
            break;
        else
            flag = -1;
            index = i;
            break;
        end
    end
end
end