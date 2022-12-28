#!/shell_scripts/bash

MYPATH=/bml/Data/Bank1/DSN_AGE/MRI_Pilot

# Data Structure Construction

for subj in $(seq -f "%03g" Y002)
do
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F1
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F2
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F3
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F4
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F5
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F6
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F7
	mkdir -p $MYPATH/NII_Y/MYP${subj}/F8
	mkdir -p $MYPATH/NII_Y/MYP${subj}/FMAP
	mkdir -p $MYPATH/NII_Y/MYP${subj}/FMAP_2
	mkdir -p $MYPATH/NII_Y/MYP${subj}/FMAP_2_P
	mkdir -p $MYPATH/NII_Y/MYP${subj}/FMAP_P
	mkdir -p $MYPATH/NII_Y/MYP${subj}/T1
	mkdir -p $MYPATH/NII_Y/MYP${subj}/T2
	mkdir -p $MYPATH/NII_Y/MYP${subj}/T2_2
	mkdir -p $MYPATH/NII_O/MOP${subj}/result_RSA

done

for subj in $(seq -f "%03g" 001 002)
do
	mkdir -p $MYPATH/NII_O/MOP${subj}/F1
	mkdir -p $MYPATH/NII_O/MOP${subj}/F2
	mkdir -p $MYPATH/NII_O/MOP${subj}/F3
	mkdir -p $MYPATH/NII_O/MOP${subj}/F4
	mkdir -p $MYPATH/NII_O/MOP${subj}/F5
	mkdir -p $MYPATH/NII_O/MOP${subj}/F6
	mkdir -p $MYPATH/NII_O/MOP${subj}/F7
	mkdir -p $MYPATH/NII_O/MOP${subj}/F8
	mkdir -p $MYPATH/NII_O/MOP${subj}/FMAP
	mkdir -p $MYPATH/NII_O/MOP${subj}/FMAP_2
	mkdir -p $MYPATH/NII_O/MOP${subj}/FMAP_2_P
	mkdir -p $MYPATH/NII_O/MOP${subj}/FMAP_P
	mkdir -p $MYPATH/NII_O/MOP${subj}/T1
	mkdir -p $MYPATH/NII_O/MOP${subj}/T2
	mkdir -p $MYPATH/NII_O/MOP${subj}/T2_2
	mkdir -p $MYPATH/NII_O/MOP${subj}/result_RSA

done
