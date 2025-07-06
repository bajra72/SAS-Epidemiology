/*Univariate analysis of variables and dichotomous outcome*/
proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Respiratory_symptoms;
Run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Seizure;
Run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Diarrhea;
run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Mosquito_contact;
run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Tick_contact;
run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = Immune_compromised;
run;

proc logistic data=TMP1.ii;
    model Organism_Disease_identified(event='1') = History_of_consuming_undercooked;
run;

/*Backward Selection to Predict MTB*/ 

/*Whole Variables*/
proc logistic data=TMP1.ii;
    class fatality rash Respiratory_symptoms Seizure Mosquito_contact Immune_compromised History_of_consuming_undercooked (param=ref ref='0'); /* optional if you want to specify reference levels */
    model Organism_Disease_identified(event='1') = age fatality rash Respiratory_symptoms Seizure Mosquito_contact Immune_compromised History_of_consuming_undercooked;
run;

/*Remove Mosquito_contact*/
proc logistic data=TMP1.ii;
    class fatality rash Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked (param=ref ref='0'); /* optional if you want to specify reference levels */
    model Organism_Disease_identified(event='1') = age fatality rash Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked;
run;

/*Remove Fatality*/
proc logistic data=TMP1.ii;
    class rash Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked (param=ref ref='0'); /* optional if you want to specify reference levels */
    model Organism_Disease_identified(event='1') = age rash Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked;
run;

/*Remove Rash*/
proc logistic data=TMP1.ii;
    class Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked (param=ref ref='0'); /* optional if you want to specify reference levels */
    model Organism_Disease_identified(event='1') = age Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked;
run;

/*Create ROC*/
proc logistic data=TMP1.ii plots=roc;
class Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked (param=ref ref='0'); /* optional if you want to specify reference levels */
    model Organism_Disease_identified(event='1') = age Respiratory_symptoms Seizure Immune_compromised History_of_consuming_undercooked;
run;

