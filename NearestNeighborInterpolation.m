img = imread('Galaxy.png');

[x,y,z] = size(img);

ratio = input('Input the zoom ratio: ');

for i = 1:ratio*y
    B(1,i) = ceil(i/ratio);
endfor

for t=1:3

   for d=1:ratio*x
    
    for k=1:ratio*y
 
      temp = B(1,k);
      newImg(d,k,t) = img(ceil(d/ratio),temp,t);
      
    endfor
    
  endfor 
  
endfor  

imwrite(newImg,'newGalaxy.png');
