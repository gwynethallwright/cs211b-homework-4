% Function to calculate the derivative of y for the second problem
function u = calculate_f_2(y)
    u = transpose([0.25*y(1) - 0.01*y(1)*y(2), -y(2) + 0.01*y(1)*y(2)]);
end