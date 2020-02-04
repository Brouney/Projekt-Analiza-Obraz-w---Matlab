function imgCopy2 = jasnosc(imgCopy, val)

%JASNOSC zmienia jasnosc obrazu
%   IMGCOPY2 = JASNOSC(IMGCOPY, VAL) zwraca obraz IMGCOPY ze zmienion�
%   jasno�ci� o warto�� VAL
%   
%   Warto�ci VAL z przedzia�u od -1 do 1
%   Dla warto�ci mniejszych od 0 jasno�� obrazu si� zmniejsza
%   Dla warto�ci wi�kszych od 0 jesto�� obrazu si� zwi�ksza

imgCopy2 = imgCopy + val;

end