function plotTrack(portx,porty,v,v0)

lw = 1;
ms = 8;

%clf
%fig = gcf;
%fig.Position(3:4) = [640,360];

plot(portx(1,:),porty(1,:),'b-o','LineWidth',lw, 'MarkerFaceColor','r','MarkerSize',ms)
hold on
plot(portx(2,:),porty(2,:),'r-+','LineWidth',lw,'MarkerSize',ms)
plot(portx(3,:),porty(3,:),'r-+','LineWidth',lw,'MarkerSize',ms)
plot(portx(4,:),porty(4,:),'r-+','LineWidth',lw,'MarkerSize',ms)
plot(portx(5,:),porty(5,:),'k-o','LineWidth',lw,'MarkerFaceColor','r','MarkerSize',ms)
hold on

text(portx(1,1)-10,porty(1,1)-25,'S','FontSize',16)
text(portx(2,1)-10,porty(2,1)-25,'1','FontSize',16)
text(portx(3,1)-10,porty(3,1)-25,'2','FontSize',16)
text(portx(4,1)-10,porty(4,1)-25,'3','FontSize',16)
text(portx(5,1)-13,porty(5,1)-25,'M','FontSize',16)

xlabel('Avst�nd fr�n start (m)')
ylabel('H�jd (m)')
title(['Raketslalom, bana 800 m, version ', v,...
    ', v_0 = ', num2str(v0), ' m/s'])
grid on
xlim([-50,850])
%ylim([-50,550])
axis equal

hold off

end