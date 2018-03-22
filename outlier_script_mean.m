clc;
clear;
vector = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];

% Compute the median absolute difference
meanValue = mean(vector)
% Compute the absolute differences.  It will be a vector.
absoluteDeviation = abs(vector - meanValue)
% Compute the media of the absolute differences
mad = median(absoluteDeviation)
% Find outliers.  They're outliers if the absolute difference
% is more than some factor times the mad value.
sensitivityFactor = 2 % Whatever you want.
thresholdValue = sensitivityFactor * mad;
outlierIndexes = abs(absoluteDeviation) > thresholdValue
% Extract outlier values:
outliers = vector(outlierIndexes)
% Extract non-outlier values:
%nonOutliers = vector(~outlierIndexes)
%---------------------------------------------------------------