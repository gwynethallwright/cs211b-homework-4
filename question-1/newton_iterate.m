function u = newton_iterate(y_guess, y, t, h, theta, tol, max_its)
    % We will say that our solution has converged if the difference between
    % subsequent solutions is smaller than the tolerance (tol)
    not_converged = true;
    % y is the solution at the current time step (we aim to evolve it
    % forward by one step in time), while u is the solution at the next
    % time step (we aim to keep improving it through iteration)
    u = y_guess;
    % We will keep track of the number of iterations performed and give up
    % if we exceed max_its
    counter = 0;
    while not_converged
        % Our set of linear equations is J dy = -F
        % Calculate F
        F = y + theta*h*calculate_f_1(y, t) + (1-theta)*h*calculate_f_1(u, t+h) - u;
        % Calculate J
        J = calculate_jacobian_1(theta, h);
        % We solve for dy using a built-in linear solver
        dy = linsolve(J, -F);
        % Check if the solution has converged
        if norm(dy, inf) < tol
            not_converged = false;
        end
        % Update our solution
        u = u + dy;
        % Update the counter
        counter = counter + 1;
        % Check if the maximum number of iterations has been reached
        if counter > max_its
            break;
        end
    end
end