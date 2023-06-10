x=imread('bd.png');% x=rgb2gray(x);
im2double(x); %hist(x(:),[0:255]);
i = x(:,:,1);      
t1 = min(i(:));
t2 = max(i(:));
m = 255/(t2 - t1);
y=(i-t1)*m
% c = 255 - m*t2; %y=mx + c   
% y = m*i + c;    
figure,imshow(i);
figure,imshow(y);
figure,hist(i(:),[0:255]);title('Before Contrast Stretching');
figure,hist(y(:),[0:255]);title('After Contrast Stretching');