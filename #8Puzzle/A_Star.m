function [path] =  A_Star(open_list, closed_list, goal, name)

%% make graph

key = num2str(open_list(1,:));
value = num2str(-1);
h = containers.Map(key,value);

%%
result = 0;
count = 0;
path = [];
depth_open = ones(1,1);
depth_close = [];
%%
cur_node = open_list(1,:);
if cur_node == goal
    cur = goal;
    showGameBoard((reshape(cur,[3,3]))','Goal');
    disp(count);
    return;
end

%%
while ((~isempty(open_list)) && (result~=1))
%%
    count = count + 1;
    if mod(count,1000) == 0
        disp(count);
    end
    
    %% choose best candidate from open - list
    [heuristic_values] = heuristic_AStar(open_list, depth_open, goal, name);
    
    index = find(heuristic_values == (min(heuristic_values)));
    total = numel(index);
    r = randi([1,total], 1,1);
    index = index(r);
    
    %%
    cur_node = open_list(index,:);
    cur_node = reshape(cur_node, [3,3]);
    
    %% apply production rule
    child_nodes = production_rule(cur_node);
    
    %% add current node to closed list
    closed_list(end+1,:) = reshape(cur_node,[1,9]);
    depth_close(end+1,:) = depth_open(index,:);
    
    open_list(index,:) = [];
    
    %% add child in open list
    n = numel(child_nodes);
    n = n/9;
    
    depth_val = depth_open(index,1) + 1;
    depth_open(index,:) = [];
    
    for i=1:n
        cur = child_nodes(i,:);
        if cur == goal
            result = 1;
            key = num2str(cur);
            value = num2str(reshape(cur_node,[1,9]));
            h(key) = value;
            break;
        end
        
        [check_open, index_open] = check_list_AStar(cur, depth_val, open_list, depth_open, goal, name);
        [check_close, index_close] = check_list_AStar(cur, depth_val, closed_list, depth_close, goal, name);
        
        if check_open == 1
            open_list(index_open, :) = [];
            depth_open(index_open, :) = [];
            open_list(end+1, :) = cur;
            depth_open(end+1, :) = depth_val;
            key = num2str(cur);
            value = num2str(reshape(cur_node,[1,9]));
            h(key) = value;
        end
        
        if check_close == 1
            closed_list(index_close, :) = [];
            depth_close(index_close, :) = [];
            open_list(end+1, :) = cur;
            depth_open(end+1, :) = depth_val;
            key = num2str(cur);
            value = num2str(reshape(cur_node,[1,9]));
            h(key) = value;
        end
        
        if check_open == 0 && check_close == 0
            open_list(end+1, :) = cur;
            depth_open(end+1, :) = depth_val;
            key = num2str(cur);
            value = num2str(reshape(cur_node,[1,9]));
            h(key) = value;
        end
    end
end

%% Show start to goal path
key = num2str(cur);
value = h(key);
path(end+1,:) = str2num(key);
while ~strcmp(value,num2str(-1))
    path(end+1,:) = str2num(value);
    value = h(value);
end

goal_c = 1;
for i=(numel(path)/9):-1:1
    cur = path(i,:);
    showGameBoard((reshape(cur,[3,3]))',num2str(goal_c));
    goal_c = goal_c + 1;
    %pause(1);
end
disp(count);

end

    
    
    


        
    