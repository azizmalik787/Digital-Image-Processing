i= imread('i1.jpg');
imshow(i);
title('Image 1');
figure,hist(i(:),[0:255]);
title('Histogram of Image 1');

i= imread('i2.jpg');
gray=rgb2gray(i);
figure,imshow(gray);
title('Image 2');
figure,hist(i(:),[0:255]);
title('Histogram of Image 2');

i= imread('C.PNG');
figure,imshow(i);
title('Image 3');
figure,hist(i(:),[0:255]);
title('Histogram of Image 3');


i= imread('r.png');
figure,imshow(i);
title('Image 4');
figure,hist(i(:),[0:255]);
title('Histogram of Image 4');



i= imread('bd.png');
figure,imshow(i);
title('Image 5');
figure,hist(i(:),[0:255]);
title('Histogram of Image 5');






