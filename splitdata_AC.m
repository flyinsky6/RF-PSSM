
clc;
clear all;
% HCVÊý¾Ý
load('Train2DPCAData.mat');
HCV_data=Train2DPCAData;

p=randperm(size(HCV_data,1));
[n,m]=size(HCV_data);
for i = 1:size(HCV_data,1)
    HCV_data(i,2:m)=HCV_data(i,2:m)/norm(HCV_data(i,2:m));
end

dataall=HCV_data;
dataall=dataall(p(1:size(HCV_data,1)),:);
flod_num=5; 
step =floor(size(dataall,1)/flod_num);
j=1
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     HCV_f1_test_feature = dataall(cv_p,2:m);
     HCV_f1_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     HCV_f1_train_feature= A(:,2:m);
     HCV_f1_train_label=A(:,1);
     save HCV1 HCV_f1_test_feature HCV_f1_test_label HCV_f1_train_feature HCV_f1_train_label 
     
j=2
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     HCV_f2_test_feature = dataall(cv_p,2:m);
     HCV_f2_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     HCV_f2_train_feature= A(:,2:m);
     HCV_f2_train_label=A(:,1);
     save HCV2 HCV_f2_test_feature HCV_f2_test_label HCV_f2_train_feature HCV_f2_train_label

j=3
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     HCV_f3_test_feature = dataall(cv_p,2:m);
     HCV_f3_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     HCV_f3_train_feature= A(:,2:m);
     HCV_f3_train_label=A(:,1);
     save HCV3 HCV_f3_test_feature HCV_f3_test_label HCV_f3_train_feature HCV_f3_train_label
j=4
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     HCV_f4_test_feature = dataall(cv_p,2:m);
     HCV_f4_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     HCV_f4_train_feature= A(:,2:m);
     HCV_f4_train_label=A(:,1);
     save HCV4 HCV_f4_test_feature HCV_f4_test_label HCV_f4_train_feature HCV_f4_train_label
     
j=5
    if j~=flod_num
        st=(j-1)*step+1;
        sed=(j)*step;
    else
        st=(j-1)*step+1;
        sed=size(dataall,1);
    end
     cv_p=[st:sed];
     HCV_f5_test_feature = dataall(cv_p,2:m);
     HCV_f5_test_label=dataall(cv_p,1);
     Tr=dataall;
     Tr(cv_p,:)='';
     A=[Tr];
     HCV_f5_train_feature= A(:,2:m);
     HCV_f5_train_label=A(:,1);
     save HCV5 HCV_f5_test_feature HCV_f5_test_label HCV_f5_train_feature HCV_f5_train_label
