% Function to calculate the Jacobian for the first problem
function u = calculate_jacobian_1(theta, h)
    u = (1-theta)*h*[-1,0;0,-100] - [1,0;0,1];
end