%%%  an example for rotation forest %%%%
clc;
clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori1.mat
load Pylori1.mat
trainXOrg=Pylori_f1_train_feature;
trainYOrg=Pylori_f1_train_label;
testXOrg=Pylori_f1_test_feature;
testYOrg=Pylori_f1_test_label;
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori2.mat
load Pylori2.mat
trainXOrg=Pylori_f2_train_feature;
trainYOrg=Pylori_f2_train_label;
testXOrg=Pylori_f2_test_feature;
testYOrg=Pylori_f2_test_label;
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
preENCRF2=[];
for i=1:numbertest  
    prelabelES=[];
    prelabelES= prelabeltest(i,:); 
    for j=1:numberclass
        index=[];
        index=find(prelabelES==class(j));
        numberindex(i,j)=length(index);
    end
    [value(i,1) indexmax(i,1)]=max(numberindex(i,:));
    preENCRF2(i,1)=class(indexmax(i,1));
end
accuracyrate2=sum(preENCRF2==testYOrg)/numbertest;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori3.mat
load Pylori3.mat
trainXOrg=Pylori_f3_train_feature;
trainYOrg=Pylori_f3_train_label;
testXOrg=Pylori_f3_test_feature;
testYOrg=Pylori_f3_test_label;
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
preENCRF3=[];
for i=1:numbertest  
    prelabelES=[];
    prelabelES= prelabeltest(i,:); 
    for j=1:numberclass
        index=[];
        index=find(prelabelES==class(j));
        numberindex(i,j)=length(index);
    end
    [value(i,1) indexmax(i,1)]=max(numberindex(i,:));
    preENCRF3(i,1)=class(indexmax(i,1));
end
accuracyrate3=sum(preENCRF3==testYOrg)/numbertest;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori4.mat
load Pylori4.mat
trainXOrg=Pylori_f4_train_feature;
trainYOrg=Pylori_f4_train_label;
testXOrg=Pylori_f4_test_feature;
testYOrg=Pylori_f4_test_label;
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
preENCRF4=[];
for i=1:numbertest  
    prelabelES=[];
    prelabelES= prelabeltest(i,:); 
    for j=1:numberclass
        index=[];
        index=find(prelabelES==class(j));
        numberindex(i,j)=length(index);
    end
    [value(i,1) indexmax(i,1)]=max(numberindex(i,:));
    preENCRF4(i,1)=class(indexmax(i,1));
end
accuracyrate4=sum(preENCRF4==testYOrg)/numbertest;
save preENCRF14 preENCRF1 preENCRF2 preENCRF3 preENCRF4
accuracyrate=[accuracyrate1;accuracyrate2;accuracyrate3;accuracyrate4];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Pylori5.mat
% clc;
% clear all;
% load Pylori5.mat
% trainXOrg=Pylori_f5_train_feature;
% trainYOrg=Pylori_f5_train_label;
% testXOrg=Pylori_f5_test_feature;
% testYOrg=Pylori_f5_test_label;
% numberfeature=size(trainXOrg,2);
% numbertrain=length(trainYOrg);
% numbertest=length(testYOrg); 
% 
% 
% class=unique(testYOrg);
% numberclass=length(class);
% 
% L=6; %% number of ensemble individuals;
% for l=1:L
%     % obtain the new samples by rotation forest %%%
%     K=6; 
%     ratio=0.75;
%     [R_new,R_coeff,trainRFnew,testXRFnew]=RotationFal(trainXOrg, trainYOrg, testXOrg, K, ratio);
%     
%     % learn for the new samples by classifiers(learners) %%%
%     knn=23; % parameter of classifiers;
%     prelabeltest(:,l) = Nearest_Neighbor(trainRFnew, trainYOrg, testXRFnew, knn);
% end
% 
% % voting %%%
% numberindex=[];
% value=[];
% preENCRF=[];
% for i=1:numbertest  
%     prelabelES=[];
%     prelabelES= prelabeltest(i,:); 
%     for j=1:numberclass
%         index=[];
%         index=find(prelabelES==class(j));
%         numberindex(i,j)=length(index);
%     end
%     [value(i,1) indexmax(i,1)]=max(numberindex(i,:));
%     preENCRF5(i,1)=class(indexmax(i,1));
% end
%       
% % compute the accuracy rate of ensemble %%%
% accuracyrate5=sum(preENCRF5==testYOrg)/numbertest;
% save preENCRF5 preENCRF5    
% % 
