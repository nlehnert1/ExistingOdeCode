function output = hopewell(t,vars)
global count;
global CF0;
global Event0;
global PVID0;
global PM0;
% I'm writing a comment on this line
% I made a different comment here!
% tryna make a conflict here
alpha = 5;
Event(1) = 1.0;
k = 4;
PM = 5;

CF = vars(1);
SC = vars(2);
PR = vars(3);
ER = vars(4);


Event(count) = Event0 * k * exp(-k*count-1);
dSCdt(count) = -CF * SC * (CF0 - CF);
dPRdt(count) = -PR * (CF0 - CF);
dERdt(count) = -ER * (CF0 - CF);
dCFdt(count) = -alpha * CF * Event(count-1) * (PM0 + PVID0)/2 - dSCdt(count) - dPRdt(count) - dERdt(count);

output(1) = dSCdt(count);
output(2) = dPRdt(count);
output(3) = dERdt(count);
output(4) = dCFdt(count);
output(5) = Event(count);
output = output';
count = count + 1;
end
