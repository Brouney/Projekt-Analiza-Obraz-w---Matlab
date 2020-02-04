function imgCopy2 = rotacja(imgCopy, val)

%ROTACJA obraca obraz
%   IMGCOPY2 = ROTACJA(IMGCOPY, VAL) zwraca obraz IMGCOPY obrócony o k¹t
%   VAL skierowany dodatnio wzglêdnem osi poziomej.
%   
%   Wartoœci VAL z przedzia³u od 0 do +inf wyra¿ona w radianach
%   Pe³en obrót dla wartoœci k * 2 * PI, k ca³kowite
%
%   Wymiary obrazu zostan¹ dopasowane do najmniejszego prostok¹ta
%   zawieraj¹cego obrócony obraz, pozosta³a czêœæ zostanie wype³niona
%   kolorem czarnym (wartoœæ równa 0).

[size_x, size_y, size_z] = size(imgCopy);

%   Ustalenie nowych wymiarów obrazu
x_sin = size_x * abs(sin(val));
y_sin = size_y * abs(sin(pi/2 - val));
x_cos = size_x * abs(cos(val));
y_cos = size_y * abs(cos(pi/2 - val));

new_size_x = round(y_cos + x_cos);
new_size_y = round(y_sin + x_sin);

%   Ustalenie œrodka przekszta³canego obrazu
mid_x = size_x / 2;
mid_y = size_y / 2;

%   Ustalenie œrodka nowego obrazu
new_mid_x = new_size_x / 2;
new_mid_y = new_size_y / 2;

imgCopy2 = zeros(new_size_x, new_size_y, size_z);

for x = 1 : new_size_x
    for y = 1 : new_size_y
        %   Przejœcie na wspó³rzêdne biegunowe
        r = sqrt((x - new_mid_x)^2 + (y - new_mid_y)^2);
        phi = atan2(y - new_mid_y, x - new_mid_x);
        
        %   Obrót o zadany k¹t
        phi = phi - val;
        
        %   Powrót na wspó³rzêdne kartezjañskie
        new_x = floor(r * cos(phi) + mid_x);
        new_y = floor(r * sin(phi) + mid_y);
        
        for i = 1 : size_z
            if new_x >= 1 && new_x <= size_x && new_y >= 1 && new_y <= size_y
                %	Przepisanie punktów 
                imgCopy2(x, y, i) = imgCopy(new_x, new_y, i);
            end
        end
    end
end

end