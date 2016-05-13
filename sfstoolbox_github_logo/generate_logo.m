% Script to generate the logo for the sfstoolbox organisation page on github
%
% version used: 209cfa9
conf = SFS_config;
conf.resolution = 1000;
[P,x,y,z,x0] = sound_field_mono_nfchoa([-2 2],[-2 2],0,[0 -1 0],'pw',1000,conf);
x0(:,7) = 1;
gp_save_matrix('sfs1.dat',x,y,P);
gp_save_loudspeakers('array.txt',x0);
[P,x,y,z] = sound_field_mono_point_source([-2 2],[-2 2],0,[0 1 0],200,conf);
gp_save_matrix('sfs2.dat',x,y,P);
