function dotW = StandDiffEq(tau,W)
global pick tau_total
if tau > pick + tau_total/100;
    waitbar(tau/tau_total);
    pick = tau;
end
dotW = zeros(8,1);
%
% SUBSTITUTIONS
%
 q1 = W(1);
 q2 = W(2);
 q3 = W(3);
 p1 = W(4);
 p2 = W(5);
 p3 = W(6);
 q = sqrt(q1^2+q2^2+q3^2);
%
% EQUATIONS
%
 dotW(1) = p1 - q2/5;
 dotW(2) = p2 + q1/5;
 dotW(3) = p3;
 dotW(4) = - p2/5 - q1/25 - q1/q^3 - 1/50;
 dotW(5) = p1/5 - q2/25 - q2/q^3;
 dotW(6) = - q3/q^3 - 3/50;
 dotW(7) = 0;
 dotW(8) = 0;
