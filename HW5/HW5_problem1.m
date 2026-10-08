%% Part b
clear;

% Calculated P matrix:
P = [  0,    1,    0,    0,    0;
     1/4,    0,  3/4,    0,    0;
       0,  2/4,    0,  2/4,    0;
       0,    0,  3/4,    0,  1/4;
       0,    0,    0,    1,    0 ];

% q0 = diroc0:
q0 = [1, 0, 0, 0, 0];

% Report q50 and q51:
q50 = q0 * (P^50)
q51 = q0 * (P^51)

% Calculate and Plot qn(2) and qn(4)
n = 0:60;
qn_2 = zeros(1, 61);
qn_4 = zeros(1, 61);

for i = 1:61
    qn = q0 * (P^(i-1));
    qn_2(i) = qn(3); % State k=2 is column 3
    qn_4(i) = qn(5); % State k=4 is column 5
end

% Running average of qk(2):
running_avg = cumsum(qn_2) ./ (n + 1);

figure('Color', 'k');
plot(n, qn_2, 'b-o', n, qn_4, 'r-s', n, running_avg, 'w--', 'LineWidth', 1.5);
grid on;
xlabel('n'); ylabel('Probability');
legend('q_n(2)', 'q_n(4)', 'Running Average q_n(2)');

%% Part c
