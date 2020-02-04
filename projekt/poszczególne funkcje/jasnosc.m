function imgCopy2 = jasnosc(imgCopy, val)

%JASNOSC zmienia jasnosc obrazu
%   IMGCOPY2 = JASNOSC(IMGCOPY, VAL) zwraca obraz IMGCOPY ze zmienion¹
%   jasnoœci¹ o wartoœæ VAL
%   
%   Wartoœci VAL z przedzia³u od -1 do 1
%   Dla wartoœci mniejszych od 0 jasnoœæ obrazu siê zmniejsza
%   Dla wartoœci wiêkszych od 0 jestoœæ obrazu siê zwiêksza

imgCopy2 = imgCopy + val;

end