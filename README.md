# RF-PSSM

RF-PSSM is a novel computational method in order to predict HCV-human PPIs from sequence data using evolutionary information extracted from PSSM. In brief, the position specific-iterated BLAST (PSI-BLAST) was used to generate PSSM by searching against the NCBI non-redundant database. Two-dimensional principal component analysis (2DPCA) was then adopted to extract protein evolutionary information from PSSM. RotationForest was finally employed as a classifier. To verify the performance of the RF-PSSM model, we not only used the k-fold cross-validation, but also made comparisons with SVM classifier and other regularly used methods on independent data set. Our results showed that RF-PSSM performed much better than all other methods

## Dataset
Negative dataset and positive dataset are both in xlsx format which includes 477 HCV-human interactions data separately. 
Neg.xlsx is the negative dataset and Pos.xlsx is the positive dataset. 
The 11 mat format data is the PSSM matrix obtained by PSI-BLAST processing of 11 HCV proteins and their interacting human proteins.
The training data set and the independent data set are obtained by random segmentation, which are used to build the model and evaluate the generalization ability of the model respectively. 
Train2DPCAData.csv is the training data set.
Indep2DPCAData.csv is the independent data set.

## Algorithm

Datapre.m is used to use 2DPCA to extract features in PSSM, divide datasets, and normalize data.
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
