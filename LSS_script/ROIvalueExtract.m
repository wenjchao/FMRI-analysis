cd '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot'
grp = 'Y';
subID = 'Y002';
side = 'R';

mask = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/ROI_MNIspace/rwwPrecuneus_%s_u_rc1%s_MPRAGE_Sag_1mm_iso_g2_Template.nii', grp, subID, side, subID);
data = cell(56,1);
token = 1;

for i = 0:7
    
    index = ((5:11) + i*17);
    
    for j = 1:7
        
        data{token} = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/result_RSA/beta_%04d.nii', grp, subID, index(j) );
        token = token + 1 ;  
        
    end
    
end

[meanvalue, voxelvalue, voxmni, voxcor] = catCarryingVoxel(mask, data, 1, 0.5);
mat = vertcat(voxelvalue{:});

csvwrite(sprintf('/mnt/sdb/Bank1/DSN_AGE/ROI/%s_pCuneus/%s_pC_%s_value.csv', side, subID, side), mat)

% for i = 1:8
%     data{i} = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y001/result_RSA/beta_%04d.nii', i+4);
%    
% end

for i = 0:7
    
    index = ((5:11) + i*11)
    
end

cd '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot'
grp = 'Y';
subID = 'Y002';
side = 'R';

mask = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/ROI_MNIspace/rwwPrecuneus_%s_u_rc1%s_MPRAGE_Sag_1mm_iso_g2_Template.nii', grp, subID, side, subID);
data = cell(56,1);
token = 1;

epidir = sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s/trial_beta', grp, subID);
epifile = dir(sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s/trial_beta/*tval.nii', grp, subID));

for i = 1:56
    data{i} = [epidir, '/', epifile(i).name];
end

[meanvalue, voxelvalue, voxmni, voxcor] = catCarryingVoxel(mask, data, 1, 0.5);
mat = vertcat(voxelvalue{:});

csvwrite(sprintf('/mnt/sdb/Bank1/DSN_AGE/ROI/%s_pCuneus/%s_pC_%s_value.csv', side, subID, side), mat)



