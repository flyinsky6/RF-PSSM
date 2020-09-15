
clc;
clear all;

load('HCV1.mat')
load('HCV2.mat')
load('HCV3.mat')
load('HCV4.mat')
load('HCV5.mat')

c=0.06;
g=6;
cmd = ['-c ',num2str(c),' -g ',num2str(g),' -b ',num2str(1)];
%fold-1
model1=svmtrain(HCV_f1_train_label,HCV_f1_train_feature,cmd);
[predictions_f1,accuracy1,dec_values1]=svmpredict(HCV_f1_test_label,HCV_f1_test_feature,model1,'-b 1');
% 

%fold-2
model2=svmtrain(HCV_f2_train_label,HCV_f2_train_feature,cmd);
[predictions_f2,accuracy2,dec_values2]=svmpredict(HCV_f2_test_label,HCV_f2_test_feature,model2,'-b 1');

%fold-3
model3=svmtrain(HCV_f3_train_label,HCV_f3_train_feature,cmd);
[predictions_f3,accuracy3,dec_values3]=svmpredict(HCV_f3_test_label,HCV_f3_test_feature,model3,'-b 1');

%fold-4
model4=svmtrain(HCV_f4_train_label,HCV_f4_train_feature,cmd);
[predictions_f4,accuracy4,dec_values4]=svmpredict(HCV_f4_test_label,HCV_f4_test_feature,model4,'-b 1');

%fold-5
model5=svmtrain(HCV_f5_train_label,HCV_f5_train_feature,cmd);
[predictions_f5,accuracy5,dec_values5]=svmpredict(HCV_f5_test_label,HCV_f5_test_feature,model5,'-b 1');

% % 
% [ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f1,Testdata_label);
% aa = [ACC,SN,SP,PPV,NPV,F1,MCC];
% 
[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f1,HCV_f1_test_label);
aa = [ACC,SN,SP,PPV,NPV,F1,MCC];

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f2,HCV_f2_test_label);
bb = [ACC,SN,SP,PPV,NPV,F1,MCC];
[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f3,HCV_f3_test_label);
cc = [ACC,SN,SP,PPV,NPV,F1,MCC];
[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f4,HCV_f4_test_label);
dd = [ACC,SN,SP,PPV,NPV,F1,MCC];
[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(predictions_f5,HCV_f5_test_label);
ee = [ACC,SN,SP,PPV,NPV,F1,MCC];

Y=[aa;bb;cc;dd;ee];  %±£´æ½á¹û
