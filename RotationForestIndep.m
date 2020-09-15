%%%  an example for rotation forest %%%%
clc;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori1.mat
load IndepData2DP.mat
load TrainData2DP.mat
trainXOrg=TrainData2DP(:,2:end);
trainYOrg=TrainData2DP(:,1);
testXOrg=IndepData2DP(:,2:end);
testYOrg=IndepData2DP(:,1);
numberfeature=size(trainXOrg,2);
numbertrain=length(trainYOrg);
numbertest=length(testYOrg); 

class=unique(testYOrg);
numberclass=length(class);

L=6; %% number of ensemble individuals;
for l=1:L
    %%% obtain the new samples by rotation forest %%%
    K=6; 
    ratio=0.75;
    [R_new,R_coeff,trainRFnew,testXRFnew]=RotationFal(trainXOrg, trainYOrg, testXOrg, K, ratio);
    
    %%% learn for the new samples by classifiers(learners) %%%
    knn=23; % parameter of classifiers;
    prelabeltest(:,l) = Nearest_Neighbor(trainRFnew, trainYOrg, testXRFnew, knn);
end

%%% voting %%%
numberindex=[];
value=[];
preENCRF1=[];
for i=1:numbertest  
    prelabelES=[];
    prelabelES= prelabeltest(i,:); 
    for j=1:numberclass
        index=[];
        index=find(prelabelES==class(j));
        numberindex(i,j)=length(index);
    end
    [value(i,1) indexmax(i,1)]=max(numberindex(i,:));
    preENCRF1(i,1)=class(indexmax(i,1));
end
accuracyrate1=sum(preENCRF1==testYOrg)/numbertest;

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(preENCRF1,testYOrg);
aa = [ACC,SN,SP,PPV,NPV,F1,MCC];
[x1,y1,auc1] = plot_roc(testYOrg,preENCRF1);

hold on
    plot(x1,y1,'r','LineWidth',1.5);
    grid on;
    ll=legend('RF');
    xlabel('1-Specificity');ylabel('Sensitivity');
    box on;
   
    grid off;
text(0.3,0.05,num2str(auc1,'AUC =%.4f'),'Fontsize',18)
set(get(gca,'XLabel'),'FontSize',18);
set(get(gca,'YLabel'),'FontSize',18);
set(gca,'FontSize',10);
set(ll,'FontSize',10);
set(gcf,'color','w');
