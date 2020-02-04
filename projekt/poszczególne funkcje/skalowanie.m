function imgCopy2 = skalowanie(imgCopy, val)

%SKALOWANIE przeskalowuje obraz
%   IMGCOPY2 = KONTRAST(IMGCOPY, VAL) zwraca obraz IMGCOPY z rozmiarem
%   przeskalowanym przez warto�� VAL
%   
%   Warto�ci VAL z przedzia�u od 0 do +inf
%   Dla warto�ci mniejszych od 1 obraz ulega zmniejszeniu
%   Dla warto�ci wi�kszych od 1 obraz ulego powi�kszeniu
%
%   Algorytm wykorzystuje metod� najbli�szego s�siada - Nearest Neighbor

[size_x, size_y, size_z] = size(imgCopy);

%   Ustalenie nowych wymiar�w obrazu
new_size_x = floor(size_x * val);
new_size_y = floor(size_y * val);


imgCopy2 = zeros(new_size_x, new_size_y, size_z);

for x = 1 : new_size_x
    for y = 1 : new_size_y
        for i = 1 : size_z
            % Metoda Nearest Neighbor
            imgCopy2(x, y, i) = imgCopy(ceil(x / val), ceil(y / val), i);
        end
    end
end

end