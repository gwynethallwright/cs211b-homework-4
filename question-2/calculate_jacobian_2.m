% Function to calculate the Jacobian for the second problem
function u = calculate_jacobian_2(theta, h, y)
    u = (1-theta)*h*[0.25 - 0.01*y(2), -0.01*y(1); 0.01*y(2), -1+0.01*y(1)] - [1,0;0,1];
end
