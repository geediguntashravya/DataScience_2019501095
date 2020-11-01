# -*- coding: utf-8 -*-
"""
Created on Sat Oct 31 20:23:25 2020

@author: Shravya
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import OneHotEncoder
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
from sklearn.impute import KNNImputer
from sklearn.linear_model import Ridge
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error as mserr
#from sklearn.decomposition import PCA
#from sklearn.preprocessing import StandardScaler
trainx = pd.read_csv('./OneDrive/Desktop/train.csv',index_col='Id')
trainy = trainx['SalePrice']
trainx.drop('SalePrice',axis=1,inplace=True)
test = pd.read_csv('./OneDrive/Desktop/test.csv',index_col='Id')
sample_size=len(trainx)
col_with_null_val=[]
for col in trainx.columns:
   if trainx[col].isnull().sum():
        col_with_null_val.append([col,float(trainx[col].isnull().sum())/float(sample_size)])
print(col_with_null_val)        
col_to_drop=[x for (x,y) in col_with_null_val if y >.3]
print(col_to_drop)
trainx.drop(col_to_drop,axis=1,inplace=True)
test.drop(col_to_drop,axis=1,inplace=True)
print(test.shape)
print(trainx.shape)
categorical_col=[col for col in trainx.columns if trainx[col].dtype==object]
ordinal_col=[col for col in trainx.columns if col not in categorical_col]
dummy=list()
for col in trainx.columns:
    if col in categorical_col:
        dummy.append("dummy")
    else:
        dummy.append("")
print(dummy)  
new_row=pd.DataFrame([dummy],columns=trainx.columns)
trainx=pd.concat([trainx,new_row],axis=0, ignore_index=True)
test=pd.concat([test],axis=0,ignore_index=True)
for col in categorical_col:
    trainx[col].fillna(value="dummy",inplace=True)
    test[col].fillna(value="dummy",inplace=True)
enc = OneHotEncoder(drop='first',sparse=False)
enc.fit(trainx[categorical_col])
trainx_enc=pd.DataFrame(enc.transform(trainx[categorical_col]))
test_enc=pd.DataFrame(enc.transform(test[categorical_col]))
trainx_enc.columns=enc.get_feature_names(categorical_col)
test_enc.columns=enc.get_feature_names(categorical_col)
trainx=pd.concat([trainx[ordinal_col],trainx_enc],axis=1,ignore_index=True)
test=pd.concat([test[ordinal_col],test_enc],axis=1,ignore_index=True)
trainx.drop(trainx.tail(1).index,inplace=True)
print(trainx)
print(test)
imputer=KNNImputer(n_neighbors=2)
imputer.fit(trainx)
trainx_filled=imputer.transform(trainx)
trainx_filled=pd.DataFrame(trainx_filled,columns=trainx.columns)
print((trainx_filled.isnull().sum()))

test_filled=imputer.transform(test)
test_filled=pd.DataFrame(test_filled,columns=test.columns)
print((test_filled.isnull().sum()))
scaler=preprocessing.StandardScaler().fit(trainx_filled)
trainx_filled=scaler.transform(trainx_filled)
test_filled=scaler.transform(test_filled)
X_train,X_test,y_train,y_test=train_test_split(trainx_filled,trainy.values.ravel(),test_size=0.3,random_state=42)
reg=LinearRegression().fit(X_train,y_train)
print(reg.score(X_train,y_train))
print(reg.score(X_test,y_test))
score_train=[]
score_test=[]
mse_train=[]
mse_test=[]
alpha=[]
for sigma in np.linspace(0.1,10,10):
    alpha.append(sigma)
    reg=Ridge(alpha=0.5,tol=0.0001)
    reg=reg.fit(X_train,y_train)
    pred=pd.DataFrame(reg.predict(test_filled))
    score_train.append(round(reg.score(X_train,y_train),10))
    score_test.append(round(reg.score(X_test,y_test),10))
    mse_train.append(round(mserr(y_train,reg.predict(X_train)),4))
    mse_test.append(round(mserr(y_test,reg.predict(X_test)),4))
    testpred=pd.DataFrame(reg.predict(test_filled))
    testpred.to_csv("test_pred.csv")
print(alpha,'\n',score_train,'\n',score_test)
print(alpha,'\n',mse_train,'\n',mse_test)
plt.figure(1)
plt.plot(alpha,score_train,'g--',label="train_score")
plt.plot(alpha,score_test,'r-o',label="test_score")
plt.xlable='Alpha'
plt.legend()
plt.show()
plt.figure(2)
plt.plot(alpha,mse_train,'y--',label="train_mse")
plt.plot(alpha,mse_test,'c-o',label="test_mse")
plt.xlable='Alpha'
plt.legend()
plt.show()
#testpred=pd.DataFrame(Elas.predict(test),columns=['SalePrice'])
#testpred.index.name = 'Id'
#testpred.to_csv("test_pred_1.csv")
