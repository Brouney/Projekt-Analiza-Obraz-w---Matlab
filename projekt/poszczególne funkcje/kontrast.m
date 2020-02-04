function imgCopy2 = kontrast(imgCopy, val)

%KONTRAST zmienia kontrast obrazu
%   IMGCOPY2 = KONTRAST(IMGCOPY, VAL) zwraca obraz IMGCOPY ze zmienionym
%   kontrastem o wartoœæ VAL
%   
%   Wartoœci VAL z przedzia³u od 0 do +inf
%   Dla wartoœci mniejszych od 1 kontrast obrazu ulega zmniejszeniu
%   Dla wartoœci wiêkszych od 1 kontrast obrazu ulega zwiêkszeniu


imgCopy2 = imgCopy * val;

end