function [Min, Max, mx, sigma, Q1, Q2, Q3, IQR] = quartile(x)
% compute min
Min = min(x);
%compute max 
Max = max(x);
% compute mean
mx = mean(x);
% compute the standard deviation
sigma = std(x);
% compute the median
medianx = median(x);
% STEP 1 - rank the data
y = sort(x);
% compute 25th percentile (first quartile)
Q1 = median(y(find(y<median(y))));
% compute 50th percentile (second quartile)
Q2 = median(y);
% compute 75th percentile (third quartile)
Q3 = median(y(find(y>median(y))));
% compute Interquartile Range (IQR)
IQR = Q3-Q1;
end