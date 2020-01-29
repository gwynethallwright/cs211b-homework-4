% Function to calculate the derivative of y for the first problem
function u = calculate_f_1(y, t)
    A = [-1, 0; 0, -100];
    B = transpose([0, 100*sin(t) + cos(t)]);
    u = A*y + B;
end