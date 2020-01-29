% Function to calculate the Jacobian of y' for the second problem
function u = calculate_jacobian_2(y)
    u = [0.25 - 0.01*y(2), -0.01*y(1); 0.01*y(2), -1+0.01*y(1)];
end
