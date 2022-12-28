addpath('/mnt/sdb/Bank1/DSN_AGE/scripts')

subID = 'MYP001';
token = 1;
for i_run = 1:8
    
    if i_run == 2
        i_ref = 1:5
    else
        i_ref = 1:7
    end
    
    for i_trial = i_ref
        token = frogsLickoutbeta(subID, i_run, i_trial, token);
        disp(token);
    end
    disp([subID, ' finished']);
end