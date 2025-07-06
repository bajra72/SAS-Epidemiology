# SAS-Epidemiology
Epidemiology project showcasing SAS skills in statistical analysis and predictive modeling. Performed univariate tests, built a logistic regression model, and interpreted key predictors. Assessed model performance using ROC curve and AUC.

# Methods
This study analyzed hypothetical hospital data from 400 patients, which included 50 cases of Mycobacterium tuberculosis (M. TB) and 350 control subjects. The dataset included demographic variables (age, sex), clinical symptoms (fever, rash, respiratory issues), and exposure factors (mosquito/tick contact, immunocompromised status, and consumption of undercooked meat).

Univariate analysis was performed using a relaxed p-value threshold of 0.25 to identify candidate predictors. Variables that met this criterion were entered into a multivariable logistic regression model. A backward stepwise selection approach was applied with a stricter significance threshold of p < 0.1 to refine the model.

# Results
Univariate analysis identified respiratory symptoms, seizures, diarrhea, mosquito/tick contact, immunocompromised status, rashes, and undercooked meat consumption as potential predictors of M. TB. After applying backward stepwise logistic regression, the final model retained five significant predictors: age, respiratory symptoms, seizures, immunocompromised status, and a history of consuming undercooked meat.

