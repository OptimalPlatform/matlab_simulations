% Plots data

figure;
plot(y);
hold on;
plot(y_true); % That is, x.
hold on;
plot(x_estimate);
hold off;
legend('Measurement','True signal','Kalman Estimate');
xlabel('Sample');
ylabel('Voltage');
