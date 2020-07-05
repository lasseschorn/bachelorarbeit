name = "lasse_schorn"
dataset_name = "application_record"
column_categorical = "CODE_GENDER"
column_continuous  = "AMT_INCOME_TOTAL"
csv_dataset_name =dataset_name + ".csv"

columns = [column_continuous,column_categorical]

data_sets_dir   = "versuchsreihe/" + dataset_name + "/datasets/"
result_dir      = "versuchsreihe/" + dataset_name + "/results/"
statistics_dir  = "versuchsreihe/" + dataset_name + "/statistics/" 

methode_1 = "Numerical Imputation"
methode_2 = "Categorical Imputation"
methode_3 = "Korrelation"
methode_4 = "Rondom Forest"

missing_folder = "/missing_datasets/"
missing_type_1 = "MAR"
missing_type_2 = "MCAR"
missing_type_3 = "MNAR" 

mar_dir  = data_sets_dir + missing_folder + missing_type_1 + "/"
mcar_dir = data_sets_dir + missing_folder + missing_type_2 + "/"
mnar_dir = data_sets_dir + missing_folder + missing_type_3 + "/"


original_df_dir = data_sets_dir + "original/"
prepair_df_dir = data_sets_dir + "prepaired/"
original_df = original_df_dir + csv_dataset_name 
prepaired_df = prepair_df_dir + csv_dataset_name 
column_name = "AMT_INCOME_TOTAL"


missing_rats = [.1,.2,.3,.4,.5,.6,.7,.8]

random_seed = 0
