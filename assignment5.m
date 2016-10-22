%
% Assignment 5: Analyzing Isometric Strength Data
%
% Submitted by: Mark Wright
%
% Due date: October 20, 2016 
%
% Instructions:Analyze Isometric strength data.Import excel spreadsheet. Create functions 
% to analyze isometric strength data. 

[SubjectID1,Age1,Gender1,Weight1,Day1,Day2,Day3] = importfile('isok_data_6803.csv',2,26);

[maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender1, Day1, Day2, Day3);

[day1toDay2] = dayComparator(subjectID1, dayI, dayF);
[day2toDay3] = dayComparator(subjectID1, dayI, dayF);

normDay1mean = mean(Day1./Weight);
normDay2mean = mean(Day2./Weight);
normDay3mean = mean(Day3./Weight);

xlswrite('isok_results.xlsx',maleGroupIsoMean,'maleGroupIsoMean')
xlswrite('isok_results.xlsx',femaleGroupIsoMean,'femaleGroupIsoMean')
xlswrite('isok_results.xlsx',maleIsoIndMean,'maleIsoIndMean')
xlswrite('isok_results.xlsx',femaleGroupIsoMean,'femaleGroupIsoMean')
xlswrite('isok_results.xlsx',day1toDay2,'day1toDay2')
xlswrite('isok_results.xlsx',day2toDay3,'day2toDay3')
xlswrite('isok_results.xlsx',normDay1mean,'normDay1mean')
xlswrite('isok_results.xlsx',normDay2mean,'normDay2mean')
xlswrite('isok_results.xlsx',normDay3mean,'normDay3mean')


