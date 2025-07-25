# SAS-Epidemiology--Logistic-Regression-and-Decision-Tree-Modeling
Epidemiology project showcasing SAS skills in statistical analysis and machine learning-based predictive modeling. Performed univariate tests, built a logistic regression model, developed a decision tree using machine learning, and interpreted key predictors. Assessed model performance using ROC curve and AUC.

# Methods
This study analyzed hypothetical hospital data from 400 patients, including 50 cases of Mycobacterium tuberculosis (M. TB) and 350 control subjects. The dataset included demographic variables (age, sex), clinical symptoms (fever, rash, respiratory issues), and exposure factors (mosquito/tick contact, immunocompromised status, and consumption of undercooked meat).

Traditional statistical modeling:
Univariate logistic regression was performed using a relaxed p-value threshold of 0.25 to identify candidate predictors.
These were entered into a multivariable logistic regression model.
A backward stepwise selection approach was applied with a stricter significance threshold of p < 0.1 to refine the final model.

Machine learning approach:
In parallel, a decision tree model was developed using SAS’s PROC HPSPLIT procedure.
The data was split into 80% training and 20% testing sets to ensure unbiased model evaluation.
The decision tree used Gini impurity for node splitting and cost-complexity pruning to avoid overfitting.
The model was constrained to a maximum depth of 5 and a maximum of 10 terminal leaves.
Performance was evaluated on the test set using misclassification rate, sensitivity, specificity, and AUC.

# Results

Logistic Regression
Univariate analysis identified respiratory symptoms, seizures, diarrhea, mosquito/tick contact, immunocompromised status, rashes, and undercooked meat consumption as potential predictors of M. TB.
After backward stepwise logistic regression, five predictors remained significant in the final model:
Age
Respiratory symptoms
Seizures
Immunocompromised status
History of consuming undercooked meat
The logistic regression model achieved an AUC of 0.93, indicating strong discriminative ability.

Machine Learning – Decision Tree
The decision tree model identified the same top predictors, with age being the most important splitting variable, followed by respiratory symptoms and immunocompromised status.
Performance on the test set:
Misclassification Rate: 5.0%
Specificity: 98.97% (very strong at identifying non-TB patients)
Sensitivity: 56.7%
AUC: 0.95

These results indicate that the decision tree performed comparably to the logistic regression model in terms of AUC but offered greater interpretability through hierarchical rules and strong specificity in ruling out non-cases.
