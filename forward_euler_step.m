% Approximate the solution at the next time step using the FEM
% Used as a guess for the Newton iterator
function u = forward_euler_step(y, f, h)
    u = y + h*f;
end