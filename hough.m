function [ h, theta_range, rho_range ] = hough()
I=imread('cameraman.tif');
    [rows, cols] = size(I);
 
    max_rho = floor(sqrt(rows^2 + cols^2)) - 1;
    max_theta = 90;
    theta_range = -max_theta:max_theta - 1;
    rho_range = -rho_max:max_rho;
    
    i=90
    for x = 1:i
    
     h = zeros(length(rho_range), length(theta_range));
 
    wb = waitbar(0, 'Naive Hough Transform');
    
    for row = 1:rows
        waitbar(row/rows, wb);
        for col = 1:cols
            if I(row, col) > 0
                x = col - 1;
                y = row - 1;
                for theta = theta_range
                    rho = round((x * cosd(theta)) + (y * sind(theta)));                   
                    rho_index = rho + max_rho + 1;
                    theta_index = theta + max_theta + 1;
                    h(rho_index, theta_index) = h(rho_index, theta_index) + 1;
                end
            end
        end
    end
    
    close(wb);
 end
 
 