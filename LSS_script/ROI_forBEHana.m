cd '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/2ndlevel_RSA/YvO'
data = cell({'/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/MYP001/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/MYP002/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/MYP003/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y001/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y002/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y003/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y004/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y005/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y006/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y007/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y008/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y009/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y010/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y011/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y012/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y013/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y014/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y015/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y016/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y017/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y018/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y019/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y020/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/Y021/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/MOP001/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/MOP002/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/MOP004/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O002/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O004/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O007/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O008/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O009/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O011/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O013/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O019/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O020/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O021/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O022/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O023/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O029/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O030/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O031/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O033/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O034/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O035/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O037/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O038/trial_beta/swRSAresult.nii',
    '/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_O/O039/trial_beta/swRSAresult.nii'});

for i_region = 0:(length(dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace/*_L.nii'))-1)
    for i_side = 1:2 
        i_index = i_side + i_region*2;
        Twoside = [{'L'},{'R'}];
        side =  string(Twoside(i_side));
        file_name = dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace/*.nii');
        area = extractBefore(file_name(i_index).name, sprintf('_%s.nii', side));
        mask = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace/%s_%s.nii', area, side);
        [meanvalue, voxelvalue, voxmni, voxcor] = catCarryingVoxel(mask, data, 1, 0.5);
        csvwrite(sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_analysis/%s_%s_value.csv', area, side), meanvalue);
    end
end

for i_region = 1:(length(dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_wholebrain/*.nii')))
    file_name = dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_wholebrain/*.nii');
    area = file_name(i_region).name;
    mask = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_wholebrain/%s', area);
    [meanvalue, voxelvalue, voxmni, voxcor] = catCarryingVoxel(mask, data, 1, 0.5);
    csvwrite(sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_analysis_wholebrain/%s_value.csv', area), meanvalue);
end

for i_region = 1:(length(dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_REG/*.nii')))
    file_name = dir('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_REG/*.nii');
    area = file_name(i_region).name;
    mask = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_MNIspace_REG/%s', area);
    [meanvalue, voxelvalue, voxmni, voxcor] = catCarryingVoxel(mask, data, 1, 0.5);
    csvwrite(sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/ROI_analysis_REG/%s_value.csv', area), meanvalue);
end
