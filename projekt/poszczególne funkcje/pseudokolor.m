
function imgCopy2 = pseudokolor(img)

y = img;
y=rgb2gray(y);
[p,q,r]=size(y);
    for i = 1:1:p
        for j = 1:1:q
            if (y(i,j)>=0 ) && (y(i,j)< 18)
            	x(i,j,1)=0;
            	x(i,j,2) = 0;
            	x(i,j,3) = 0;
            elseif (y(i,j)>=18 ) && (y(i,j)<36 )
            	x(i,j,1)=237;
            	x(i,j,2) = 1;
            	x(i,j,3) = 25;
            elseif (y(i,j)>= 36) && (y(i,j)<54 )
                x(i,j,1)=228;
                x(i,j,2) = 142;
            	x(i,j,3) = 31;
        	elseif (y(i,j)>= 54) && (y(i,j)<72 )
        		x(i,j,1)=56;
        		x(i,j,2) = 254;
        		x(i,j,3) = 182;
        	elseif (y(i,j)>=72 ) && (y(i,j)<90 )
            	x(i,j,1)=21;
            	x(i,j,2) = 158;
        		x(i,j,3) = 233;
        	elseif (y(i,j)>=90 ) && (y(i,j)<108 )
        		x(i,j,1)=118;
        		x(i,j,2) = 3;
           		x(i,j,3) = 50;
        	elseif (y(i,j)>= 108) && (y(i,j)< 126)
            	x(i,j,1)=252;
            	x(i,j,2) = 236;
            	x(i,j,3) = 170;
            elseif (y(i,j)>=126 ) && (y(i,j)<144 )
            	x(i,j,1)=200;
        		x(i,j,2) = 200;
            	x(i,j,3) = 200;
        	elseif (y(i,j)>= 144) && (y(i,j)<162 )
            	x(i,j,1)=50;
            	x(i,j,2) = 230;
            	x(i,j,3) = 62;
        	elseif (y(i,j)>= 162) && (y(i,j)<180 )
            	x(i,j,1)=50;
            	x(i,j,2) = 165;
            	x(i,j,3) = 77;
        	elseif (y(i,j)>= 180) && (y(i,j)<198 )
            	x(i,j,1)=50;
            	x(i,j,2) = 80;
            	x(i,j,3) = 100;
            elseif (y(i,j)>=198 ) && (y(i,j)<216 )
            	x(i,j,1)=130;
            	x(i,j,2) = 795;
            	x(i,j,3) = 67;
            elseif (y(i,j)>=216 ) && (y(i,j)<232 )
            	x(i,j,1)=16;
            	x(i,j,2) = 233;
            	x(i,j,3) = 59;
            elseif (y(i,j)>=232 ) && (y(i,j)<255 )
            	x(i,j,1)=255;
            	x(i,j,2) = 255;
                x(i,j,3) = 10;
            end
        end
   
    end
    x =x/255;
    imgCopy2=x;
end



