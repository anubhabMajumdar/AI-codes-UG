% start = [2,8,3,1,6,4,7,0,5];
% goal = [1,2,3,8,0,4,7,6,5];

%%
% start = [7,2,4,5,0,6,8,3,1];
% %goal = [0,1,2,3,4,5,6,7,8];
% goal = [1,2,3,4,0,5,6,7,8];

%%
start = [4,2,0,1,7,5,8,3,6];
goal = [1,2,3,4,5,6,7,8,0];

%%
open_list = [];
closed_list = [];
open_list(end+1,:) = start;

%% make graph

% key = num2str(start);
% value = num2str(-1);
% h = containers.Map(key,value);

%% Non - Informed Search

[p] = BFS(open_list, closed_list, goal);
[p] = DFS(open_list, closed_list, goal, 5);
[p, d] = IDS(open_list, closed_list, goal);

%% Heuristic Search

[p] = Best_First(open_list, closed_list, goal, 'minimum_mismatch');
[p] = Best_First(open_list, closed_list, goal, 'manhattan_distance');
[p] = A_Star(open_list, closed_list, goal, 'minimum_mismatch');
[p] = A_Star(open_list, closed_list, goal, 'manhattan_distance');

%%

