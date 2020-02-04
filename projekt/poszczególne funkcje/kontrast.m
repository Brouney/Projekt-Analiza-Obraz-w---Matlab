function imgCopy2 = kontrast(imgCopy, val)

%KONTRAST zmienia kontrast obrazu
%   IMGCOPY2 = KONTRAST(IMGCOPY, VAL) zwraca obraz IMGCOPY ze zmienionym
%   kontrastem o warto�� VAL
%   
%   Warto�ci VAL z przedzia�u od 0 do +inf
%   Dla warto�ci mniejszych od 1 kontrast obrazu ulega zmniejszeniu
%   Dla warto�ci wi�kszych od 1 kontrast obrazu ulega zwi�kszeniu


imgCopy2 = imgCopy * val;

end