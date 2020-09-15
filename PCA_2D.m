%--------------------------------------------------------------------------
%
% 说明：2DPCA算法  
% 函数参数  
%   DataSet:数据集，height*width*num的矩阵  
%   thresthold:阈值
% 
%--------------------------------------------------------------------------  
  

%DataSet=Trans_M;
%thresthold=0.95;
function [allFeature]=PCA_2D(DataSet,thresthold)        
     
    numTrainInstance = size(DataSet,3);    %利用size函数获取Dataset数组的三个参数高、宽、样本个数
    height = size(DataSet,1);            
    width = size(DataSet,2);          
     
    numShape = 3;
    projection = zeros(width,numShape);  
    allFeature = zeros(height,numShape,numTrainInstance);  
      
   
    meanFace = mean(DataSet,3);  %meanFace求取样本均值
    CovG = zeros(width,width);  
    for n=1:numTrainInstance  
        disToMean = DataSet(:,:,n)-meanFace;  
        CovG = CovG+disToMean'*disToMean; 
    end  
    CovG = CovG/numTrainInstance;   %协方差矩阵20*20
  
    [eigenFace,eigenValue] = svd(CovG);     %利用svd函数求取其特征向量和特征值 eigenFace是20*20，eigenValue是对角矩阵
      
    if(nargin==2)       %输入变量的个数为2
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
        projection(:,k) = eigenFace(:,k);  %获取前numShape个特征向量
    end  
  
    for inum = 1:numTrainInstance  
        allFeature(:,:,inum) = DataSet(:,:,inum)*projection;  %得到提取特征后的数据
    end;  
        
end           