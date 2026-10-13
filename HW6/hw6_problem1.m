%% Part (a)
pa = [0, 1, 0, 0;
      0, 0, 1, 0;
      0, 0, 0, 1;
      0.5, 0.5, 0, 0;];

for i = 1:100
    % fprintf("New P #%d\n", i)
    newp = pa^i;
    if newp(1,1) <= 0
        % fprintf("p^n(1,1) zero at i=%d\n", i)
    end
    if newp(4,4) <= 0
        fprintf("p^n(4,4) zero at i=%d\n", i)
    end
end
clear

%% Part (b)
m  = 4;
pb = zeros(m, m);

fprintf("For m = %d\n", m)

pb(m, 1) = 0.5; % Set M->1 = 1/2
pb(m, 3) = 0.5; % Set M->3 = 1/2
for i = 1:m-1
    pb(i, i+1) = 1;
end

donecount   = 1;
dthreecount = 1;
dcount  = 0;
boolone = 0;
boolthr = 0;
for i = 1:100
    % fprintf("New P #%d\n", i)
    newp = pb^i;
    if newp(1,1) <= 0 && boolone == 0
        donecount = donecount + 1;
    elseif boolone == 0
        fprintf("Dcount/Period (1) = %d\n", donecount)
        boolone = 1;
    end
    if newp(3,3) <= 0 && boolthr == 0
        dthreecount = dthreecount + 1;
    elseif boolthr == 0
        fprintf("Dcount/Period (3) = %d\n", dthreecount)
        boolthr = 1;
    end

    if boolone && boolthr
        dcount = gcd(dthreecount, donecount);
        fprintf("GCD of periods = %d\n", dcount)
        break;
    end
end
clear

%% Part (c)
