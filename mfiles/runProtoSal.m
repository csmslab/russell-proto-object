function [h] = runProtoSal(filename)
%Runs the proto-object based saliency algorithm
%
%inputs:
%filename - filename of image
%
%By Alexander Russell and Stefan Mihalas, Johns Hopkins Univeristy, 2012

fprintf('Start Proto-Object Saliency')
%generate parameter structure
params = makeDefaultParams;
%load and normalize image
im = normalizeImage(im2double(imread(filename)));
%generate feature channels
img = generateChannels(im,params);
%generate border ownership structures
[b1Pyr b2Pyr]  = makeBorderOwnership(img,params)        ;        
%generate grouping pyramids
gPyr = makeGrouping(b1Pyr,b2Pyr,params);
%normalize grouping pyramids and combine into final saliency map
h = ittiNorm(gPyr,8);

fprintf('\nDone\n')