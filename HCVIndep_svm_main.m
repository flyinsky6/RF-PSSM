
clc;
clear all;
load('Indep2DPCAData.mat')
load('Train2DPCAData.mat')


Traindata_label=Train2DPCAData(:,1);
Traindata_feature=Train2DPCAData(:,2:end);
Testdata_label=Indep2DPCAData(:,1);
Testdata_feature=Indep2DPCAData(:,2:end);

model1=svmtrain(Traindata_label,Traindata_feature,'-c 0.06 -g 6 -b 1');
[predictions_f1,accuracy1,dec_values1]=svmpredict(Testdata_label,Testdata_feature,model1,'-b 1');
[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f1,Testdata_label);
aa = [ACC,SN,SP,PPV,NPV,F1,MCC];
[X1,Y1,THRE,AUC1,OPTROCPT,SUBY,SUBYNAMES] = perfcurve(Testdata_label,dec_values1(:,1),'1');
