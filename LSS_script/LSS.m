matlab -nodesktop

addpath('/mnt/sdb/Bank1/DSN_AGE/scripts')
nii_grp = 'Y';
ind = 19:21;

for i_sub = ind
    filelist = dir(sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s', nii_grp));
    name = {filelist.name};
    name = name(~strncmp(name, '.O.', 1));
    subID = char(name(i_sub));
    
    token = 1;
    for i_run = 1:8
        for i_trial = 1:7
            token = frogsLickoutbeta(subID, i_run, i_trial, token);
            disp(token);
        end
    end
    
    disp([subID, ' finished']);
end

quit