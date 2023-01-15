function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    red = img(:, :, 1);
    % TODO: Extrage canalul verde al imaginii.
    green = img(:, :, 2);
    % TODO: Extrage canalul albastru al imaginii.
    blue = img(:, :, 3);
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    red = proximal_resize(red, p, q);
    green = proximal_resize(green, p, q);
    blue = proximal_resize(blue, p, q);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, red, green, blue);
endfunction
