# Command Line Options

| Command Line Option | Description | Argument | Number of Arguments | Details | Default |
|---------------------|-------------|----------|---------------------|---------|---------|
|  | --csv | CSV file name | 1 | Mandatory |  |
|  | --header | 0 or 1 | 0-1 | If a header (column name) exists, set to 1 | 0 |
|  | --col | Number | 0-1 | Number of columns to skip (starting from the first column) | 0 |
|  | --iter | Number | 0-1 | Maximum iterations for convergence in independent component analysis | 1000000 |
|  | --lasso | LASSO parameter | 0-1 | Prune edges using LASSO regularization (LASSO parameter) | 0 |
|  | --sideways | 0 or 1 | 0-1 | Set to 1 for a horizontal diagram | 0 |
|  | --output_diaglam_type | File extension | 0-1 | File extension for diagram output | png |
|  | --diaglam_size | Number | 0-1 | Scaling factor for diagram output size | 20 |
|  | --x_var | Column name | Variable | Explanatory variable column name or index |  |
|  | --y_var | Column name | Variable | Target variable column name or index |  |
|  | --error_distr | 0 or 1 | 0-1 | Set to 1 to perform residual analysis and output error_distr.csv | 1 |
|  | --error_distr_size | Number,Number | 0-1 | Size (scaling factor) for residual analysis result images (height and width) | 1,1 |
|  | --min_cor_delete | Value > 0 | 0-1 | Remove relationships with correlation (absolute value) below this value | -1 |
|  | --min_delete | Value > 0 | 0-1 | Remove relationships with causal effects (absolute value) below this value | -1 |
|  | --cor_range_d | Value > 0 | 0-1 | Lower bound of correlation range for relationship output | 0 |
|  | --cor_range_u | Value > 0 | 0-1 | Upper bound of correlation range for relationship output | 0 |
|  | --ignore_constant_value_columns | 0 or 1 | 0-1 | Set to 1 to ignore columns with constant values | 0 |
|  | --lasso_tol | Value | 0-1 | Convergence threshold for LASSO pruning | 0.0001 |
|  | --lasso_itr_max | Number | 0-1 | Maximum iterations for LASSO pruning convergence | 10000 |
|  | --load_model | Model file name | Optional | Reevaluate using precomputed data without causal search calculations |  |
|||||||
|  | --confounding_factors | 0 or 1 | 0-1 | Set to 1 for latent common variable calculations | 0 |
|  | --confounding_factors_sampling | Number | ≥ 1 | Maximum iterations for parameter optimization | 30000 |
|  | --mutual_information_cut | Value | 0-1 | Cut edges using mutual information threshold | 0 |
|  | --mutual_information_values | 0 or 1 | 0-1 | Set to 1 to output mutual information values between variables in the graph | 0 |
|  | --distribution_rate | Value > 0 | 0-1 | Multiply this value to generate distribution for μ | 1 |
|  | --temperature_alp | 1 > Value > 0 | 0-1 | Coefficient for probabilistic transitions in optimization | 0.95 |
|  | --prior_knowledge | Prior knowledge data | Optional | Specify prior causal knowledge |  |
|  | --prior_knowledge_rate | 1 ≥ Value > 0 | 0-1 | Accuracy of prior causal knowledge | 1 |
|  | --rho | Value > 0 | 0-1 | Distribution parameter σ range (12 times the specified value is set as the mean of μ distribution) | 3 |
|  | --bins | Value > 0 | 0-1 | Number of bins for mutual information integration | 30 |
|  | --early_stopping | Number | ≥ 1 | Stop calculations when optimization loss does not change for the specified iterations |  |
|  | --pause | 0 or 1 | 0-1 | Prevent console from closing after execution by setting to 1 | 0 |
|  | --normalize_type | 0, 1, or 2 | 0-1 | Normalize (1), standardize (2), or keep data as is (0) | 0 |
|  | --use_intercept | 0 or 1 | 0-1 | Include intercept term in regression results if set to 1 | 0 |
|  | --min_delete_srt | Number | 0-1 | Remove variables with causal effects smaller than the specified number of top variables | 0 |
|  | --loss_data_load | 0 or 1 | 0-1 | Load loss data from model generation when loading a model | 0 |
|  | --use_adaptive_lasso | 0 or 1 | 0-1 | Use adaptive LASSO for variable selection in LASSO | 1 |
| Experiment| --nonlinear | 0 or 1 | 0-1 | Applying nonlinear models | 0 |
| Experiment | --use_gpu | 0 or 1 | 0-1 |using pytorch to estimate a nonlinear model. Does it use GPU for computation? | 0 |
| Experiment | --activation_fnc | activation fucntion name|  SELU,tanh,leakyrelu,relu,mish |Specify activation function | tanh |
| Experiment | --use_hsic |  0 or 1 |  0-1 |Should HSIC be used to calculate independence? | 0 |
| Experiment| --use_pnl | 0 or 1 | 0-1 | Use PNL for nonlinear models? | 0 |
| Experiment| --learning_rate | Number | > 0 | learning_rate| 0.001 |
| Experiment| --n_unit | Number | > 0 | Number of units for fully-connected layer|  |
| Experiment| --n_epoch | Number | > 0 | Number of epochs| 20 |
| Experiment| --optimizer | optimizer name | rmsprop,adam,adagrad,sgd | optimizer| rmsprop |
| Experiment| --minbatch | Number | > 0 | minbatch size|  |
| Experiment| --dropout_rate | Number | > 0 | dropout rate| 0.01 |
| Experiment| --confounding_factors_upper2 | Number | > 0 | | 0.05 |
| Experiment| --u1_param | Number | > 0 | | 0.001 |
| Experiment| --random_pattern | 0 or 1 | 0-1 |Randomly generate substitution patterns for the B matrix? | 0 |
| Experiment| --_Causal_Search_Experiment | 0 or 1 | 0-1 | |  |
|  | --@ | Response file name | 0-1 | Specify a file describing command-line options (first character in the file must be blank) |  |
|||||||