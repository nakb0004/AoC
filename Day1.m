clc; clear all; close all;

lines = readlines("adventofcode.com_2022_day_1_input.txt");
calories = str2double(lines);

noOfDeers = sum(isnan(calories)) + 1;
deerCalories = zeros(1, noOfDeers);
deerCount = 1;
calCount = 0;

for i = 1:length(calories)
    if isnan(calories(i))
        deerCalories(deerCount) = calCount;
        calCount = 0;
        deerCount = deerCount + 1;
    else
        calCount = calCount + calories(i);
    end
end

maxCal = max(deerCalories)
%% part 2
sortedDeers = sort(deerCalories, 'descend');
top3 = sum(sortedDeers(1:3))