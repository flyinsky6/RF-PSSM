%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori数据
load preENCRF14.mat
load preENCRF5.mat
load Pylori1.mat
load Pylori2.mat
load Pylori3.mat
load Pylori4.mat
load Pylori5.mat
[x1,y1,auc1] = plot_roc(Pylori_f1_test_label,preENCRF1);
[x2,y2,auc2] = plot_roc(Pylori_f2_test_label,preENCRF2);
[x3,y3,auc3] = plot_roc(Pylori_f3_test_label,preENCRF3);
[x4,y4,auc4] = plot_roc(Pylori_f4_test_label,preENCRF4);
[x5,y5,auc5] = plot_roc(Pylori_f5_test_label,preENCRF5);
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yeast数据
 
hold on
    plot(x1,y1,'g','LineWidth',1.5);
    plot(x2,y2,'y','LineWidth',1.5);
    plot(x3,y3,'b','LineWidth',1.5);    
    plot(x4,y4,'r','LineWidth',1.5);    
    plot(x5,y5,'k','LineWidth',1.5);
    grid on;
    ll=legend('1th fold','2th fold','3th fold','4th fold','5th fold');
    xlabel('1-Specificity');ylabel('Sensitivity');
    box on;
   meanAUC=mean([auc1,auc2,auc3,auc4,auc5]);
    grid off;
 text(0.3,0.05,num2str(meanAUC,'Average AUC =%.4f'),'Fontsize',18)
set(get(gca,'XLabel'),'FontSize',18);
set(get(gca,'YLabel'),'FontSize',18);
set(gca,'FontSize',10);
set(ll,'FontSize',10);
set(gcf,'color','w');