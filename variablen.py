name = "lasse_schorn"

csv_dataset_name ="application_record.csv"
orginal_df_dir = name + "/bachelorarbeit/versuchsreihe/orginal/"
orginal_df = orginal_df_dir + csv_dataset_name 
column_name = "AMT_INCOME_TOTAL"

methode_1 = "Numerical Imputation"
methode_2 = "Categorical Imputation"
methode_3 = "Korrelation"
methode_4 = "Rondom Forest"

missing_type_1 = "MAR"
missing_type_2 = "MCAR"
missing_type_3 = "MNAR" 

mar_dir  = name + "/bachelorarbeit/versuchsreihe/testDataSet/MAR/"
mcar_dir = name + "/bachelorarbeit/versuchsreihe/testDataSet/MCAR/"
mnar_dir = name + "/bachelorarbeit/versuchsreihe/testDataSet/MNAR/"

testDataSet_dir = name + "/bachelorarbeit/versuchsreihe/testDataSet/"
result_dir      = name + "/bachelorarbeit/versuchsreihe/results/"
statistics_dir  = name + "/bachelorarbeit/versuchsreihe/statistics/" 

missing_rats = [.1,.2,.3,.4,.5,.6,.7,.8]

random_seed = 0
