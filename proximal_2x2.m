function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    #f = imread(f);
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;
    % Se afl? num?rul de puncte.
    n = length(x_int);
    distance = zeros(4,1);

    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.
    x1 = 1;
    y1 = 1;
    x2 = 2;
    y2 = 2;
    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    T = zeros(n,n);
    pixel_value = 0;
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : n
        for j = 1 : n
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            distance(1) = sqrt((x_int(i) - x1) ^ 2 + (y_int(j) - y1) ^ 2);
            distance(2) = sqrt((x_int(i) - x1) ^ 2 + (y_int(j) - y2) ^ 2);
            distance(3) = sqrt((x_int(i) - x2) ^ 2 + (y_int(j) - y1) ^ 2);
            distance(4) = sqrt((x_int(i) - x2) ^ 2 + (y_int(j) - y2) ^ 2);
            minimum_distance = min(distance);
            if (j ~= floor(n / 2 + 1))
              if (minimum_distance == distance(3))
                pixel_value = f(y2, x1);
              elseif (minimum_distance == distance(4))
                pixel_value = f(y2, x2);
              elseif (minimum_distance == distance(1))
                pixel_value = f(y1, x1);
              elseif (minimum_distance == distance(2))
                pixel_value = f(y1, x2);
              endif
            elseif (j == floor(n / 2 + 1))
              if (i < floor(n / 2 + 1))
                pixel_value = f(y1, x2);
              elseif (i >= (n / 2))
                pixel_value = f(y2, x2);
              endif
            endif
            % TODO: Calculeaza pixelul din imaginea finala.
            T(i,j) = pixel_value;
        endfor
    endfor
    out = T;
endfunction