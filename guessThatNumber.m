function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Mark Wright
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 
%%%% bug 1 to replace || with && ; I need all statements to be not equal
%%%% before presenting that it was an invalid selection
while level ~= beginner && level ~= moderate && level ~= advanced  
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected
%%%%bug2 there needed to be anothor equal sign added between level and
%%%%beginner; I don't want to assign level to beginner, I want to make
%%%%equal
if level == beginner                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;
%%%%Bug3 capitalize the H in advanceHighest; the other variables of highest
%%%%were capitalized
else
highest = advancedHighest;          
end

% randomly select secret number between 1 and highest for level of play
%%%% Bug4 change floor(rand() + 1 * highest); I put the formula that gave
%%%% my secret number a range.
secretNumber = randi([1,highest]);      

% initialize number of guesses and User_guess
%%%%bug5 the numOfTries needs to start at 0 so that it prints the correct number of tries
numOfTries = 0; 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
%%%%bug6 replace >= with > ; I want to include my highest number and exclude everything higher  
while userGuess < 1 || userGuess > highest 

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct
%%%%bug7 sign switched from greater than to lesser than
if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1 && userGuess == secretNumber %%%%bug8 add && statement
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); 
%%%%bug9 There were two variables in the fprint statement,
%%%%so I need both secretNumber and numOfTries

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop
end %%%% bug10 end the function 
% end of game