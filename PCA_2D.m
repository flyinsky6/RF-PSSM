%--------------------------------------------------------------------------
%
% ˵����2DPCA�㷨  
% ��������  
%   DataSet:���ݼ���height*width*num�ľ���  
%   thresthold:��ֵ
% 
%--------------------------------------------------------------------------  
  

%DataSet=Trans_M;
%thresthold=0.95;
function [allFeature]=PCA_2D(DataSet,thresthold)        
     
    numTrainInstance = size(DataSet,3);    %����size������ȡDataset��������������ߡ�����������
    height = size(DataSet,1);            
    width = size(DataSet,2);          
     
    numShape = 3;
    projection = zeros(width,numShape);  
    allFeature = zeros(height,numShape,numTrainInstance);  
      
   
    meanFace = mean(DataSet,3);  %meanFace��ȡ������ֵ
    CovG = zeros(width,width);  
    for n=1:numTrainInstance  
        disToMean = DataSet(:,:,n)-meanFace;  
        CovG = CovG+disToMean'*disToMean; 
    end  
    CovG = CovG/numTrainInstance;   %Э�������20*20
  
    [eigenFace,eigenValue] = svd(CovG);     %����svd������ȡ����������������ֵ eigenFace��20*20��eigenValue�ǶԽǾ���
      
    if(nargin==2)       %��������ĸ���Ϊ2
        if(thresthold<1)
            %disp('u set thresthold');  
            sumEigenValue = 0;  
            tmp = 0;  
            for xi=1:size(eigenValue,2)  
                sumEigenValue = sumEigenValue+eigenValue(xi,xi);  
            end  
            for xi=1:size(eigenValue,2)  
                tmp = tmp+eigenValue(xi,xi);  
                if(tmp/sumEigenValue>thresthold)  
                    break;  
                end  
            end;  
            numShape = xi;    
        else  
            %disp('u set the d value...');  
            numShape = thresthold;  
        end  
              
        projection = zeros(width,numShape);  
        allFeature = zeros(height,numShape,numTrainInstance);  
      
    end            
  
    for k=1:numShape  
        projection(:,k) = eigenFace(:,k);  %��ȡǰnumShape����������
    end  
  
    for inum = 1:numTrainInstance  
        allFeature(:,:,inum) = DataSet(:,:,inum)*projection;  %�õ���ȡ�����������
    end;  
        
end           