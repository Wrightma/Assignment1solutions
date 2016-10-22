 function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender1, Day1, Day2, Day3)
mfIsoMean =((Day1+Day2+Day3)/3);
% The function genderIsoCalc takes the inputs of Gender and each day to
% return the mean of the male and female isometric strength over the three days
% mfIsoMean takes the male and female Isometric mea


%
for i = 1:length(Gender1)
    if (Gender1{i,1}=='M')
        maleIsoIndMeans(i,1) = mfIsoMean(i,1);
    else
        femaleIsoIndMeans(i,1) = mfIsoMean(i,1);
    end
end

maleIsoIndMeans(maleIsoIndMeans==0)=nan
femaleIsoIndMeans(femaleIsoIndMeans==0)=nan
maleGroupIsoMean = mean(maleIsoIndMeans,'omitnan')
femaleGroupIsoMean = mean(femaleIsoIndMeans,'omitnan')
%maleIsoIndMeans/femaleIsoIndMeans coverts the zero's from the for loop 
%matrix(maleIsoIndMeans/femaleIsoIndMeans) to Nan. The next pair of commands 
%gets rid of the Nan's so that the correct mean can be found(not including
%the zero's).
 end
 






