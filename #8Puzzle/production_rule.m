function [child_nodes] = production_rule(cur_node)

%% Production Rule

    [x,y] = find(cur_node == 0);
    child_nodes = [];
    
    %% go down
    if x+1<=3
        temp = cur_node;
        temp(x,y) = temp(x+1,y);
        temp(x+1,y) = 0;
        temp = reshape(temp, [1,9]);
        child_nodes(end+1,:) = temp;
    end

    %% go right
    if y+1<=3
        temp = cur_node;
        temp(x,y) = temp(x,y+1);
        temp(x,y+1) = 0;
        temp = reshape(temp, [1,9]);
        child_nodes(end+1,:) = temp;
    end

    %% go up
    if x-1>=1
        temp = cur_node;
        temp(x,y) = temp(x-1,y);
        temp(x-1,y) = 0;
        temp = reshape(temp, [1,9]);
        child_nodes(end+1,:) = temp;
    end

    %% go left
    if y-1>=1
        temp = cur_node;
        temp(x,y) = temp(x,y-1);
        temp(x,y-1) = 0;
        temp = reshape(temp, [1,9]);
        child_nodes(end+1,:) = temp;
    end
end
