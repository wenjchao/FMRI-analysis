!/shell_scripts/bash

MYPATH=/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot

# Data Structure Construction

for subj in $(seq -f "%03g" 020 021)
do
	mkdir -p $MYPATH/NII_Y/Y${subj}/F1
	mkdir -p $MYPATH/NII_Y/Y${subj}/F2
	mkdir -p $MYPATH/NII_Y/Y${subj}/F3
	mkdir -p $MYPATH/NII_Y/Y${subj}/F4
	mkdir -p $MYPATH/NII_Y/Y${subj}/F5
	mkdir -p $MYPATH/NII_Y/Y${subj}/F6
	mkdir -p $MYPATH/NII_Y/Y${subj}/F7
	mkdir -p $MYPATH/NII_Y/Y${subj}/F8
	mkdir -p $MYPATH/NII_Y/Y${subj}/FMAP
	mkdir -p $MYPATH/NII_Y/Y${subj}/FMAP_2
	mkdir -p $MYPATH/NII_Y/Y${subj}/FMAP_2_P
	mkdir -p $MYPATH/NII_Y/Y${subj}/FMAP_P
	mkdir -p $MYPATH/NII_Y/Y${subj}/T1
	mkdir -p $MYPATH/NII_Y/Y${subj}/T2
	mkdir -p $MYPATH/NII_Y/Y${subj}/T2_2
	mkdir -p $MYPATH/NII_Y/Y${subj}/result_RSA

done

for subj in $(seq -f "%03g" 020 020)
do
	mkdir -p $MYPATH/NII_O/O${subj}/F1
	mkdir -p $MYPATH/NII_O/O${subj}/F2
	mkdir -p $MYPATH/NII_O/O${subj}/F3
	mkdir -p $MYPATH/NII_O/O${subj}/F4
	mkdir -p $MYPATH/NII_O/O${subj}/F5
	mkdir -p $MYPATH/NII_O/O${subj}/F6
	mkdir -p $MYPATH/NII_O/O${subj}/F7
	mkdir -p $MYPATH/NII_O/O${subj}/F8
	mkdir -p $MYPATH/NII_O/O${subj}/FMAP
	mkdir -p $MYPATH/NII_O/O${subj}/FMAP_2
	mkdir -p $MYPATH/NII_O/O${subj}/FMAP_2_P
	mkdir -p $MYPATH/NII_O/O${subj}/FMAP_P
	mkdir -p $MYPATH/NII_O/O${subj}/T1
	mkdir -p $MYPATH/NII_O/O${subj}/T2
	mkdir -p $MYPATH/NII_O/O${subj}/T2_2
	mkdir -p $MYPATH/NII_Y/Y${subj}/result_RSA

done
