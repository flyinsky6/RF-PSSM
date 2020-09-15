clc;
clear all;
load('Core.MAT')
load('E1.MAT')
load('E2.MAT')
load('F.MAT')
load('P7.MAT')
load('NS2.MAT')
load('NS3.MAT')
load('NS4A.MAT')
load('NS4B.MAT')
load('NS5A.MAT')
load('NS5B.MAT')
threshold=0.99;
%%%%%%%%%%%%%%%%%%%%%%CORE
Core=BlockCORE'*BlockCORE;
m=size(CoreNTr);
m=m(1,1);
for i=1:m
    CoreN(:,:,i)=[CoreNTr{i,1} Core];
end
for i=1:m
    CoreP(:,:,i)=[CorePTr{i,1} Core];
end

CoreNF=PCA_2D(CoreN,0.993);
CorePF=PCA_2D(CoreP,0.991);
CoreNFF=[];
for i=1:m
    c=[];
    aa=CoreNF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    CoreNFF=[CoreNFF;c];
end
CoreNFF=mapminmax(CoreNFF, 0, 1);

CorePFF=[];
for i=1:m
    c=[];
    aa=CorePF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    CorePFF=[CorePFF;c];
end
CorePFF=mapminmax(CorePFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%E1
E1=BlockE1'*BlockE1;
m=size(E1NTr);
m=m(1,1);
for i=1:m
    E1N(:,:,i)=[E1NTr{i,1} E1];
end
for i=1:m
    E1P(:,:,i)=[E1PTr{i,1} E1];
end
E1NF=PCA_2D(E1N,threshold);
E1PF=PCA_2D(E1P,threshold);
E1NFF=[];
for i=1:m
    c=[];
    aa=E1NF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    E1NFF=[E1NFF;c];
end
E1NFF=mapminmax(E1NFF, 0, 1);

E1PFF=[];
for i=1:m
    c=[];
    aa=E1PF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    E1PFF=[E1PFF;c];
end
E1PFF=mapminmax(E1PFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%E2
E2=BlockE2'*BlockE2;
m=size(E2NTr);
m=m(1,1);
for i=1:m
    E2N(:,:,i)=[E2NTr{i,1} E2];
end
for i=1:m
    E2P(:,:,i)=[E2PTr{i,1} E2];
end
E2NF=PCA_2D(E2N,0.996);
E2PF=PCA_2D(E2P,threshold);
E2NFF=[];
for i=1:m
    c=[];
    aa=E2NF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    E2NFF=[E2NFF;c];
end
E2NFF=mapminmax(E2NFF, 0, 1);

E2PFF=[];
for i=1:m
    c=[];
    aa=E2PF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    E2PFF=[E2PFF;c];
end
E2PFF=mapminmax(E2PFF, 0, 1);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%F
F=BlockF'*BlockF;
m=size(FNTr);
m=m(1,1);
for i=1:m
    FN(:,:,i)=[FNTr{i,1} F];
end
for i=1:m
    FP(:,:,i)=[FPTr{i,1} F];
end
FNF=PCA_2D(FN,0.994);
FPF=PCA_2D(FP,0.990);
FNFF=[];
for i=1:m
    c=[];
    aa=FNF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    FNFF=[FNFF;c];
end
FNFF=mapminmax(FNFF, 0, 1);

FPFF=[];
for i=1:m
    c=[];
    aa=FPF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    FPFF=[FPFF;c];
end
FPFF=mapminmax(FPFF, 0, 1);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS2
NS2=BlockNS2'*BlockNS2;
m=size(NS2NTr);
m=m(1,1);
for i=1:m
    NS2N(:,:,i)=[NS2NTr{i,1} NS2];
end
for i=1:m
    NS2P(:,:,i)=[NS2PTr{i,1} NS2];
end
NS2NF=PCA_2D(NS2N,threshold);
NS2PF=PCA_2D(NS2P,threshold);
NS2NFF=[];
for i=1:m
    c=[];
    aa=NS2NF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS2NFF=[NS2NFF;c];
end
NS2NFF=mapminmax(NS2NFF, 0, 1);

NS2PFF=[];
for i=1:m
    c=[];
    aa=NS2PF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS2PFF=[NS2PFF;c];
end
NS2PFF=mapminmax(NS2PFF, 0, 1);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS3
NS3=BlockNS3'*BlockNS3;
m=size(NS3NTr);
m=m(1,1);
for i=1:m
    NS3N(:,:,i)=[NS3NTr{i,1} NS3];
end
for i=1:m
    NS3P(:,:,i)=[NS3PTr{i,1} NS3];
end
NS3NF=PCA_2D(NS3N,threshold);
NS3PF=PCA_2D(NS3P,threshold);
NS3NFF=[];
for i=1:m
    c=[];
    aa=NS3NF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS3NFF=[NS3NFF;c];
end
NS3NFF=mapminmax(NS3NFF, 0, 1);

NS3PFF=[];
for i=1:m
    c=[];
    aa=NS3PF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS3PFF=[NS3PFF;c];
end
NS3PFF=mapminmax(NS3PFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS4A
NS4A=BlockNS4A'*BlockNS4A;
m=size(NS4ANTr);
m=m(1,1);
for i=1:m
    NS4AN(:,:,i)=[NS4ANTr{i,1} NS4A];
end
for i=1:m
    NS4AP(:,:,i)=[NS4APTr{i,1} NS4A];
end
NS4ANF=PCA_2D(NS4AN,0.993);
NS4APF=PCA_2D(NS4AP,0.989);
NS4ANFF=[];
for i=1:m
    c=[];
    aa=NS4ANF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS4ANFF=[NS4ANFF;c];
end
NS4ANFF=mapminmax(NS4ANFF, 0, 1);

NS4APFF=[];
for i=1:m
    c=[];
    aa=NS4APF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS4APFF=[NS4APFF;c];
end
NS4APFF=mapminmax(NS4APFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS4B
NS4B=BlockNS4B'*BlockNS4B;
m=size(NS4BNTr);
m=m(1,1);
for i=1:m
    NS4BN(:,:,i)=[NS4BNTr{i,1} NS4B];
end
for i=1:m
    NS4BP(:,:,i)=[NS4BPTr{i,1} NS4B];
end
NS4BNF=PCA_2D(NS4BN,threshold);
NS4BPF=PCA_2D(NS4BP,0.994);
NS4BNFF=[];
for i=1:m
    c=[];
    aa=NS4BNF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS4BNFF=[NS4BNFF;c];
end
NS4BNFF=mapminmax(NS4BNFF, 0, 1);

NS4BPFF=[];
for i=1:m
    c=[];
    aa=NS4BPF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS4BPFF=[NS4BPFF;c];
end
NS4BPFF=mapminmax(NS4BPFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS5A
NS5A=BlockNS5A'*BlockNS5A;
m=size(NS5ANTr);
m=m(1,1);
for i=1:m
    NS5AN(:,:,i)=[NS5ANTr{i,1} NS5A];
end
for i=1:m
    NS5AP(:,:,i)=[NS5APTr{i,1} NS5A];
end
NS5ANF=PCA_2D(NS5AN,0.991);
NS5APF=PCA_2D(NS5AP,0.996);
NS5ANFF=[];
for i=1:m
    c=[];
    aa=NS5ANF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS5ANFF=[NS5ANFF;c];
end
NS5ANFF=mapminmax(NS5ANFF, 0, 1);

NS5APFF=[];
for i=1:m
    c=[];
    aa=NS5APF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS5APFF=[NS5APFF;c];
end
NS5APFF=mapminmax(NS5APFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NS5B
NS5B=BlockNS5B'*BlockNS5B;
m=size(NS5BNTr);
m=m(1,1);
for i=1:m
    NS5BN(:,:,i)=[NS5BNTr{i,1} NS5B];
end
for i=1:m
    NS5BP(:,:,i)=[NS5BPTr{i,1} NS5B];
end
NS5BNF=PCA_2D(NS5BN,0.99);
NS5BPF=PCA_2D(NS5BP,0.99);
NS5BNFF=[];
for i=1:m
    c=[];
    aa=NS5BNF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS5BNFF=[NS5BNFF;c];
end
NS5BNFF=mapminmax(NS5BNFF, 0, 1);

NS5BPFF=[];
for i=1:m
    c=[];
    aa=NS5BPF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    NS5BPFF=[NS5BPFF;c];
end
NS5BPFF=mapminmax(NS5BPFF, 0, 1);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%P7
P7=BlockP7'*BlockP7;
m=size(P7NTr);
m=m(1,1);
for i=1:m
    P7N(:,:,i)=[P7NTr{i,1} P7];
end
for i=1:m
    P7P(:,:,i)=[P7PTr{i,1} P7];
end
P7NF=PCA_2D(P7N,0.994);
P7PF=PCA_2D(P7P,0.994);
P7NFF=[];
for i=1:m
    c=[];
    aa=P7NF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    P7NFF=[P7NFF;c];
end
P7NFF=mapminmax(P7NFF, 0, 1);

P7PFF=[];
for i=1:m
    c=[];
    aa=P7PF(:,:,i);
    n=size(aa);
    a=n(1,1);
    b=n(1,2);
    for j=1:20
        c=[c,aa(j,:)];    
    end
    P7PFF=[P7PFF;c];
end
P7PFF=mapminmax(P7PFF, 0, 1);

% Neg=cat(1,CoreNFF,E1NFF,E2NFF,FNFF,NS2NFF,NS3NFF,NS4ANFF,NS4BNFF,NS5ANFF,NS5BNFF,P7NFF);
% Pos=[CorePFF,E1PFF,E2PFF,FPFF,NS2PFF,NS3PFF,NS4APFF,NS4BPFF,NS5APFF,NS5BPFF,P7PFF];

Neg=cat(1,CoreNFF,E1NFF,E2NFF,FNFF,NS2NFF,NS3NFF,NS4ANFF,NS4BNFF,NS5ANFF,NS5BNFF,P7NFF);
Pos=cat(1,CorePFF,E1PFF,E2PFF,FPFF,NS2PFF,NS3PFF,NS4APFF,NS4BPFF,NS5APFF,NS5BPFF,P7PFF);

La1=ones(1,477)'*(-1);
La2=ones(1,477)';
NF=[La1,Neg];
PF=[La2,Pos];
CCaP=[NF;PF];

rand('state',1 );
rowbank=randperm(size(CCaP,1));
ll=ceil(length(rowbank)*0.8)-1;

Train2DPCAData=CCaP(rowbank(1:ll),:);
Indep2DPCAData=CCaP(rowbank(ll+1:length(rowbank)),:);

save HCV2DPCAData CCaP
save Train2DPCAData Train2DPCAData
save Indep2DPCAData Indep2DPCAData
