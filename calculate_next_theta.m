function u = calculate_next_theta(y, h, t, theta, tol, max_its)
    f = calculate_f_1(y, t);
    % Use the forward Euler method to approximate the solution at the next
    % time step, which is used as a guess for the Newton iterator
    y_guess = forward_euler_step(y, f, h);
    % Refine the solution at the next time step using Newton iteration
    y_next = newton_iterate(y_guess, y, t, h, theta, tol, max_its);
    % Plug the above solution into the theta method to find the "best
    % version" of the solution (think of it as the "corrector" part of a
    % predictor-corrector method
    u = y + theta*h*f + (1-theta)*h*calculate_f_1(y_next, t+h);
end