import numpy as np
import pandas as pd
import seaborn as sns
import variablen as var

def retransform(X_prepaired, column):
	X_original  = pd.read_csv(var.original_df)
	s = X_prepaired[column].drop_duplicates()
	s = s[np.logical_not(np.isnan(s))]
	a = pd.read_csv(var.prepair_df_dir + 'columns/' + column, delimiter=";", decimal=",")
	s = a[column]
	for i, v in s.items():
		X_prepaired[column] = X_prepaired[column].replace( float(i) ,v) 
	return X_prepaired