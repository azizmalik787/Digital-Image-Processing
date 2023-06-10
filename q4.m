

f=imread('bd.png');
figure,imshow(f); title('Original Image');
figure,hist(f(:),[0:255]);title('Original Histogram');


arr = zeros(1,256,'double'); 
row = 122;
col=150;
Pixels = row*col;
                                            
for i=1:row %rows
    for j=1:col %columns
        arr(f(i,j))= 1 + arr(f(i,j));   
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
        f(i,j) = arr(f(i,j)) ; 
    end
end

figure,imshow(f);
title('Enhanced Image');

figure, hist(f(:),[0:255]);
title('Enhanced Image Histogram');
minValue = min(f(:));


