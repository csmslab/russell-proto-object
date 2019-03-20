clc
addpath('img');
addpath('mfiles');
addpath('mex');
fprintf('\n******************************************************************************\n')
fprintf('Environment for proto-object saliency configured. \n\n')
fprintf('This code was in part inspired by Dirk Walther''s Saliency Toolbox.\n')
fprintf('See www.saliencytoolbox.net for an excellent toolkit on feature based saliency\n\n')
fprintf('All code* by Alexander Russell and Stefan Mihalas\n')
fprintf('Johns Hopkins University, 2012\n')
fprintf('\n*In this version the (M-m)^2 Itti et al (1998) style normalization and the\n');
fprintf('normalizeImage function were both written by Dirk Walther\n\n');
fprintf('\n\n');
fprintf('To run call runProtoSal(filename), try h = runProtoSal(''img/test.jpg'') for an example\n')
fprintf('\nThis toolbox requires the image processing toolbox to run\n')
fprintf('\n*****************************************************************************\n\n')



