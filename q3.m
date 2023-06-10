f=imread('bd.png');

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
