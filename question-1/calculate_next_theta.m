function u = calculate_next_theta(y, h, t, theta, tol, max_its)
    f = calculate_f_1(y, t);
    % Use the current solution as a guess for the solution at the next
    % time step (for the Newton iterator)
    y_guess = y;
    % Refine the solution at the next time step using Newton iteration
    y_next = newton_iterate(y_guess, y, t, h, theta, tol, max_its);
    % Plug the above solution into the theta method to find the "best
    % version" of the solution (think of it as the "corrector" part of a
    % predictor-corrector method
    u = y + theta*h*f + (1-theta)*h*calculate_f_1(y_next, t+h);
end