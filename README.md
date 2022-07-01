# RF-PSSM

RF-PSSM is a machine learning method for predicting the interactions between HCV and human.

## Dataset
Negative dataset and positive dataset are both in xlsx format which includes 477 HCV-human interactions data separately.   
Neg.xlsx is the negative dataset and Pos.xlsx is the positive dataset.   
The 11 mat format data is the PSSM matrix obtained by PSI-BLAST processing of 11 HCV proteins and their interacting human proteins.  
The training data set and the independent data set are obtained by random segmentation, which are used to build the model and evaluate the generalization ability of the model respectively.   
Train2DPCAData.csv is the training data set.  
Indep2DPCAData.csv is the independent data set.  

## Algorithm

Datapre.m is used to adopt 2DPCA to extract features in PSSM, divide datasets, and normalize data.  
Splitdata_AC.m is used to split the training data into several parts(5).   
HCV_svm_main.m is used to show the result of 5-fold cross-validation by SVM using the parameters obtained after grid search.  
RotationForest.m is used to show the result of 5-fold cross-validation by RF-PSSM using the parameters obtained after grid search.  
plotroc.m is used to showed the ROC curves of the 5-fold cross-validation obtained by SVM.  
plotrocRF.m is used to showed the ROC curves of the 5-fold cross-validation obtained by RF-PSSM.  
HCVIndep_svm_main.m is used to evaluate the performance of SVM by independent data set.   
RotationForestIndep.m is used to evaluate the performance of RF-PSSM by independent data set.   
PCA_2D.m is used to do principal component analysis.   
roc1.m is used to compute each indicator used in RF-PSSM.  

## Contact

Feel free to contact us if you need any help: flyinsky6#gmail.com
