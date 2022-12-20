!/shell_scripts/bash

MYPATH=/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/
MYPATH1=/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/DCM_O/
MYPATH2=/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/DCM_O/MOP001

for subj in $(seq -f "%03g" 020 020)
do
cd ${MYPATH1}
date_subj_list_1=$(ls -F |grep O${subj})
cd ${MYPATH2}
date_subj_list_2=$(ls -F )

# File Conversion
	for date_subj_1 in ${date_subj_list_1}
	do
		for date_subj_2 in ${date_subj_list_2}
		do
			dcm2niix -f "${date_subj_1%/*}_%p" -o "${MYPATH}NII_O/${date_subj_1}${date_subj_2}" "${MYPATH}DCM_O/${date_subj_1}${date_subj_2}"
		done
	done
done
