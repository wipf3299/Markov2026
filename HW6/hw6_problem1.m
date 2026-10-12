%% Part (a)
p = [ 0, 1, 0, 0;
      0, 0, 1, 0;
      0, 0, 0, 1;
      0.5, 0.5, 0, 0;];

for i = 1:100
    % fprintf("New P #%d\n", i)
    newp = p^i;
    if newp(1,1) <= 0
        % fprintf("p^n(1,1) zero at i=%d\n", i)
    end
    if newp(4,4) <= 0
        fprintf("p^n(4,4) zero at i=%d\n", i)
    end
end

%% Part (b)


%% Part (c)
