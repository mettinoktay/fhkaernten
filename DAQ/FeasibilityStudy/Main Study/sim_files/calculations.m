rtherm = [1000:2120.5];
vtherm = zeros(1, 1121);
R0 = 1000

for i = 1:1121
    vtherm(i) =  5*rtherm(i)/(rtherm(i)+R0);
end

% figure

% plot(rtherm, vtherm,'LineWidth', 3)
% title('Voltage Across The Sensor')
% xlabel('Resistance (\Omega)')
% ylabel('Voltage (V)')
% fontsize(24,"points")
% grid minor

temp = 0.2677*(rtherm-1000);
% 
% figure
% 
% plot(temp, vtherm, 'LineWidth',3)
% title('Voltage Across The Sensor')
% xlabel('Temperature (\circC)')
% ylabel('Voltage (V)')
% fontsize(24,"points")
% grid minor

figure

temps = 0:1.8116:270;

stairs(temps)
title('Temperature Steps')
xlabel('ADC Output')
ylabel('Temperature (\circC)')
fontsize(24,'points')


LSB = 5/1024;

volts = 0:LSB:5;
adc_out = 0:1024;

figure

stairs(adc_out, volts)
title('ADC Output')
xlabel('Digital Output')
ylabel('ADC Input (V)')
fontsize(24,'points')
