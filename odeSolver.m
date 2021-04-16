clear all;
close all;
global count;
global CF0;
global Event0;
global PVID0;
global PM0;
count = 2;
timespan = [1 401];
initialValues = rand(1,5);
CF0 = initialValues(1);
Event0 = 1;
PVID0 = initialValues(5);
PM0 = 5;

[timeOut,values] = ode45(@hopewell,timespan,initialValues);

plot(timeOut,values,'x');
grid on;
xlabel('Time (s)');
ylabel('No idea');
legend('CF','SC','PR','ER','PVID','PM');