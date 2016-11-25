function [] = showGameBoard(position, message);
X = 300;
Y = 300;

board = zeros(X,Y);
%%
for i=1:3
    for j=1:3
        if position(i,j) ~= 0
            name = strcat('images/',num2str(position(i,j)),'.bmp');
            im = imread(name);
%             im = im2bw(im, graythresh(im));
%             im = imresize(im, [100,100]);
%             writeName = strcat(num2str(position(i,j)),'.bmp');
%             imwrite(im, writeName); 
        else
            im = zeros(100,100);
        end
        
        board((((i-1)*100)+1):i*100 , (((j-1)*100)+1):j*100) = im;
    end
end
%%
board(99:101 , 1:300) = 0;
board(199:201 , 1:300) = 0;
board(1:300 , 99:101) = 0;
board(1:300 , 199:201) = 0;

%%
imshow(board), title(message);
pause(1);
end