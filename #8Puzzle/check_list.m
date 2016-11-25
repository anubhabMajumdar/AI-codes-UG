function [flag, index] = check_list(item, list)

flag = 0;
index = 0;
[n,~] = size(list);
for i=1:n
    if item == list(i,:)
        flag = 1;
        index = i;
        break;
    end
end
end