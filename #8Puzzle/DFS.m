function [path] =  DFS(open_list, closed_list, goal, max_depth)

%% make graph

key = num2str(open_list(1,:));
value = num2str(-1);
h = containers.Map(key,value);

%%
path = [];
result = 0;
count = 0;
depth = ones(1,1);
%max_depth = 10000;
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
    
    %% check tree depth
    
    if depth(end,1) > max_depth
        open_list(end,:) = [];
        depth(end,:) = [];
        continue;
    end
    
    %%
    cur_node = open_list(end,:);
    cur_node = reshape(cur_node, [3,3]);
    %showGameBoard(cur_node','');
    %pause(0.5);
    %% apply production rule
    child_nodes = production_rule(cur_node);
    
    %% add current node to closed list
    closed_list(end+1,:) = reshape(cur_node,[1,9]);
    open_list(end,:) = [];
    
    %% add child in open list
    n = numel(child_nodes);
    n = n/9;
    
    depth_val = depth(end,1) + 1;
    depth(end,:) = [];
    
    for i=1:n
        cur = child_nodes(i,:);
        if cur == goal
            result = 1;
            key = num2str(cur);
            value = num2str(reshape(cur_node,[1,9]));
            h(key) = value;
            break;
        end
        [check_open, index] = check_list(cur, open_list);
        check_close = check_list(cur, closed_list);
        
        if check_open == 1
            open_list(index, :) = [];
            depth(index,:) = [];
        end
        
        
        if (check_close == 0)
             open_list(end+1,:) = cur;
             depth(end+1,:) = depth_val;
             key = num2str(cur);
             value = num2str(reshape(cur_node,[1,9]));
             h(key) = value;
        end
    end
end

%%
if result == 1
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
else
    disp(['Solution not found at depth ',num2str(max_depth)]);
end
end

