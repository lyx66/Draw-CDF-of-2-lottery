cd("C:\Users\Lenovo\OneDrive - The Chinese University of Hong Kong\DSME5001\my ans")
data = xlsread("HW_4.xlsx");

font = 'Times New Roman';
figure('DefaultTextFontName', font, 'DefaultAxesFontName', font);
h = stairs(data(:,1),data(:,2:3),'LineWidth',1);
h(1).Color = 'r';
h(2).Color = 'b';
h(2).LineStyle = '--';
legend({'Lottery A', 'Lottery B'});
ylim([0 1.6]);
xlim([-15 35]);
ylabel("$F(x)$",'Interpreter','latex');
xlabel("$x$",'Interpreter','latex');
grid on
saveas(gcf,'HW_4.svg');