name = "lasse_schorn"
dataset_name_1 = "application_record"
dataset_name_2 = "application_record"
dataset_name_3 = "application_record"
dataset_name_4 = "application_record"
# versuchsreihe/datasets/
data_sets_dir   = "versuchsreihe/" +  "datasets/" 
# application_record.csv
csv_dataset_name_1 =dataset_name_1 + ".csv"
csv_dataset_name_2 =dataset_name_2 + ".csv"
csv_dataset_name_3 =dataset_name_3 + ".csv"
csv_dataset_name_4 =dataset_name_4 + ".csv"
# versuchsreihe/datasets/ /original/
original_df_dir = "data/" 

original_df_1 = original_df_dir + csv_dataset_name_1
original_df_2 = original_df_dir + csv_dataset_name_1
original_df_3 = original_df_dir + csv_dataset_name_1
original_df_4 = original_df_dir + csv_dataset_name_1


column_1 = "CODE_GENDER"
column_2 = "AMT_INCOME_TOTAL"
column_3 ='3'
column_4 ='4'
column_5 ='5'
column_6 ='6'
column_7 ='7'
column_8 ='8'
column_9 ='9'

columns = [column_1, column_2, column_3, column_4, column_5, column_6, column_7, column_8, column_9 ]
application_record = [column_2]
#,column_categorical1
data_sets_dir   = "versuchsreihe/" + "datasets/"
result_dir      = "versuchsreihe/" + "results/"
statistics_dir  = "versuchsreihe/" + "statistics/" 

methode_1 = "means"
methode_2 = "modus"
methode_3 = "median"
methode_4 = "correlation_1"
methode_5 = "correlation_2"
methode_6 = "correlation_3"
methode_7 = "rondom_forest_classification"
methode_8 = "rondom_forest_regression"
methode_9 = "neuronal_network"

#methodes = [methode_1, methode_2, methode_3, methode_4, methode_5, methode_6, methode_7, methode_8, methode_9]


missing_folder = "/missing_datasets/"

y_train = 'y_train'
x_train = 'X_train'
y_test  = 'y_test'
x_test  = 'X_test'
sub_columns = 'columns' 
sub_train = 'train'

train_set = [y_train, x_train]
test_set = [y_test, x_test]




prepair_df_dir = data_sets_dir + "prepaired/"
prepaired_df = prepair_df_dir + csv_dataset_name_1 


missing_rats = [.0,.1,.25,.5,.8]

random_seed = 42
