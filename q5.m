x=imread('BadHist.jpg');% x=rgb2gray(x);
im2double(x); %hist(x(:),[0:255]);
figure,imshow(x); title('Original Image');
figure,hist(x(:),[0:255]);title('Original Histogram');
i = x(:,:,1);        
t1 = min(i(:));
t2 =  max(i(:));
m = 255/(t2 - t1);
y= (i-t1)*m;

figure,imshow(y); title('Image After Contrast Stretching');
figure,hist(y(:),[0:255]);title('Histogram After Contrast Stretching');


arr = zeros(1,256,'double'); 
row = 683;
col=1024;
Pixels = row*col;
                                            
for i=1:row %rows
    for j=1:col %columns
        arr(x(i,j))= 1 + arr(x(i,j));   
    end
end



for i = 1:256
    arr(i) = arr(i)/Pixels;   % calculating probability
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=2:256
    arr(i) = arr(i) + arr(i - 1);   % Adding all probablities
end

    
for i=2:256
    arr(i) = floor(arr(i) * 256);   % scaling floor product
end

%swapping/Mapping onto the original array of image
for i=1:row
    for j=1:col
        y(i,j) = arr(x(i,j)) ; 
    end
end

figure,imshow(y);
title('Enhanced Image');

figure, hist(y(:),[0:255]);
title('Enhanced Image Histogram');


