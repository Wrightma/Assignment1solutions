function [day1toDay2] = dayComparator(subjectID1, dayI, dayF)
% dayComparator is a function that compares two sets of data to display
% whether there is a positive change in the strength of different days.
% 
DayItoDayF = dayI-dayF;
matrix7 = [subjectID1, DayItoDayF];
% DayItoDayF finds the difference between the Initial day and the final day
% matrix7 takes the subjectID's and the difference between days and
% displays them in a matrix

for i = 1:length(subjectID1)
    if (matrix7{i,1}>0)
        increaseSubjectID(i,1) = matrix7(i,1);
    end
day1toDay2 =  increaseSubjectID(increaseSubjectID ~= 0);  
end

  

