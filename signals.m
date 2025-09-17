% Task 1: MATLAB Programming
% Generate and plot basic continuous-time signals

clc; clear; close all;

t = -10:0.01:10;   % time vector

%% 1. Unit Impulse Signal (approximated since delta is discrete)
impulse = (t == 0);   % 1 at t=0, 0 elsewhere
figure(1);
subplot(3,2,1);
plot(t, impulse, 'b'); grid on;
title('Continuous time unit impulse signal');
xlabel('continuous time t ---->');
ylabel('amplitude--->');

%% 2. Unit Step Signal
u = (t >= 0);   % 1 for t >= 0
subplot(3,2,2);
plot(t, u, 'b'); grid on;
title('Unit step signal');
xlabel('continuous time t ---->');
ylabel('amplitude--->');

%% 3. Unit Ramp Signal
r = t .* (t >= 0);  % ramp starts from 0
subplot(3,2,3);
plot(t, r, 'b'); grid on;
title('Unit ramp signal');
xlabel('continuous time t ---->');
ylabel('amplitude--->');

%% 4. Exponential Signal
exp_signal = 5 * exp(-0.2 * (t+5)); 
subplot(3,2,4);
plot(t, exp_signal, 'b'); grid on;
title('continuous time exponential signal');
xlabel('continuous time t ---->');
ylabel('amplitude--->');

%% 5. Signum Signal
sgn = sign(t);   % -1 for t<0, 0 for t=0, 1 for t>0
subplot(3,2,[5,6]);
plot(t, sgn, 'b'); grid on;
title('continuous time signum function');
xlabel('continuous time t ---->');
ylabel('amplitude--->');

%% 6. Sinc Signal 
figure(2);
sinc_signal = sinc(t); 
plot(t, sinc_signal, 'b'); grid on;
title('continuous time sinc function');
xlabel('continuous time t ------>');
ylabel('amplitude--->');
