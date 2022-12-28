subID = 'Y002';

if contains(subID, "Y")
    grp = "Y";
    grp2 = "Young";
else
    grp = "O";
    grp2 = "Old";
end

subdir = sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s', grp, subID);
token = 1;
beta_path = [subdir, '/', 'trial_beta'];
mkdir(beta_path);

for i_run = 1:8
    
    index = (5:11);
    epidir = sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s/F%d', grp, subID, i_run);
    epifile = dir(sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s/F%d/ar*.nii', grp, subID, i_run));
    epifile_V = spm_vol([epidir, '/', epifile.name]);
    run_scans = cell(length(epifile_V), 1);
    
    for i_scan = 1:length(epifile_V)
        run_scans{i_scan} = [epidir, '/', sprintf('%s%s%d', epifile.name, ',', i_scan)];
    end
    
    motfile = dir(sprintf('/home/karmey77/Desktop/DSN_AGE/MRI_Pilot/NII_%s/%s/F%d/rp*.txt', grp, subID, i_run));
    run_mot = [epidir, '/', motfile.name];
    soa_dir = sprintf('/mnt/sdb/Bank1/DSN_AGE/BEH/%s/%s', grp2, subID);
    soa_file = dir(sprintf('/mnt/sdb/Bank1/DSN_AGE/BEH/%s/%s/%s_SOA_%d.mat', grp2, subID, subID, i_run));
    run_soa = [soa_dir, '/', soa_file.name];
    load(run_soa);
    
    for i_trial = 1:7
        
        temp_path = [subdir, '/', 'temp'];
        mkdir(temp_path);
        output_path_beta = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/%s/trial_beta/sub-%s_run-%d_trial-%02d_beta.nii', subID, subID, i_run, i_trial);
        output_path_tval = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_Y/%s/trial_beta/sub-%s_run-%d_trial-%02d_tval.nii', subID, subID, i_run, i_trial);
        
        matlabbatch{1}.spm.stats.fmri_spec.dir = {temp_path};
        matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
        matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2.4;
        matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 38;
        matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 2;
        matlabbatch{1}.spm.stats.fmri_spec.sess.scans = run_scans;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).name = 'Target';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).onset = onsets{index(i_trial)};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).duration = durations{index(i_trial)};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(1).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).name = 'Others';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).onset = onsets{index(1:end ~= i_trial)};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).duration = durations{index(1:end ~= i_trial)};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(2).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).name = 'fixation';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).onset = onsets{1};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).duration = durations{1};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(3).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).name = 'initiation';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).onset = onsets{2};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).duration = durations{2};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(4).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).name = 'review';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).onset = onsets{3};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).duration = durations{3};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(5).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).name = 'navigation';
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).onset = onsets{4};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).duration = durations{4};
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).tmod = 0;
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).pmod = struct('name', {}, 'param', {}, 'poly', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.cond(6).orth = 1;
        matlabbatch{1}.spm.stats.fmri_spec.sess.multi = {''};
        matlabbatch{1}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
        matlabbatch{1}.spm.stats.fmri_spec.sess.multi_reg = {run_mot};
        matlabbatch{1}.spm.stats.fmri_spec.sess.hpf = 128;
        matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
        matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
        matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
        matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
        matlabbatch{1}.spm.stats.fmri_spec.mthresh = 1e-05;
        matlabbatch{1}.spm.stats.fmri_spec.mask = {sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/T1/c1%s_MPRAGE_Sag_1mm_iso_g2.nii,1', grp, subID, subID)};
        matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
        matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
        matlabbatch{2}.spm.stats.fmri_est.write_residuals = 1;
        matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
        matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
        matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'Target';
        matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
        matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
        matlabbatch{3}.spm.stats.con.delete = 1;
        matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('Model estimation: Beta Images', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','beta'));
        matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_filter.typ = 'image';
        matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_filter.filter = 'beta_0001';
        matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
        matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_filter.files(1) = cfg_dep('Contrast Manager: All Stats Images', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spm'));
        matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_filter.typ = 'image';
        matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_filter.filter = 'spmT_0001';
        matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_filter.frames = '';
        matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_move.files(1) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
        matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_move.files(2) = cfg_dep('File Filter: Filtered Files', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
        matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_move.action.moveto = {beta_path};
        matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/trial_beta/beta_0001.nii', grp, subID);
        matlabbatch{7}.cfg_basicio.run_ops.call_matlab.inputs{2}.string = output_path_beta;
        matlabbatch{7}.cfg_basicio.run_ops.call_matlab.outputs = {};
        matlabbatch{7}.cfg_basicio.run_ops.call_matlab.fun = 'movefile';
        matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{1}.string = sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/trial_beta/spmT_0001.nii', grp, subID);
        matlabbatch{8}.cfg_basicio.run_ops.call_matlab.inputs{2}.string = output_path_tval;
        matlabbatch{8}.cfg_basicio.run_ops.call_matlab.outputs = {};
        matlabbatch{8}.cfg_basicio.run_ops.call_matlab.fun = 'movefile'; 
        matlabbatch{9}.cfg_basicio.file_dir.dir_ops.dir_move.dir = {sprintf('/mnt/sdb/Bank1/DSN_AGE/MRI_Pilot/NII_%s/%s/temp', grp, subID)};
        matlabbatch{9}.cfg_basicio.file_dir.dir_ops.dir_move.action.delete = true;
        spm_jobman('run', matlabbatch);
        token = token + 1;
    end
end