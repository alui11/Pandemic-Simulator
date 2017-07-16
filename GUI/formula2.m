function bestTurn = formula2(possibleTurns, players, currentPlayer)
% bestTurn = formula1(possibleTurns)
% Given an array of possible board states, returns the ideal option
% using a board-state favorability formula
% favors prevention of outbreaks

%% Calculate Board Scores
for istep = 1:length(possibleTurns)

%Set Variables
currentBoardState = possibleTurns{istep};

player1array = currentBoardState{1};
player2array = currentBoardState{2};
player3array = currentBoardState{3};
player4array = currentBoardState{4};
infectionArray = currentBoardState{5};
researchStations = currentBoardState{6};
diseaseStatus = currentBoardState{7};

currentPlayerArray = currentBoardState{currentPlayer};

boardScore(istep) = 0;

%Set adjacent cities array for reference

adjacentCities = [13, 2, 46, 40, 0, 0;...
    1, 13, 14, 5, 3, 0;...
    2, 6, 4, 0, 0, 0;...
    3, 6, 7, 10, 0, 0;...
    2, 6, 15, 0, 0, 0;...
    3, 4, 5, 15, 0, 0;...
    4, 10, 11, 8, 0, 0;...
    7, 9, 11, 12, 0, 0;...
    8, 26, 27, 0, 0, 0;...
    4, 7, 11, 20, 25, 0;...
    7, 8, 10, 12, 25, 0;...
    8, 11, 26, 0, 0, 0;...
    1, 2, 14, 48, 0, 0;...
    2, 13, 15, 16, 17, 0;...
    5, 6, 14, 16, 0, 0;...
    14, 15, 17, 19, 20, 0;...
    14, 16, 18, 0, 0, 0;...
    17, 0, 0, 0, 0, 0;...
    16, 20, 0, 0, 0, 0;...
    10, 19, 16, 21, 0, 0;...
    20, 22, 23, 0, 0, 0;...
    28, 21, 23, 24, 0, 0;...
    21, 22, 24, 0, 0, 0;...
    22, 23, 0, 0, 0, 0;...
    10, 11, 26, 28, 0, 0;...
    9, 12, 25, 27, 28, 29;...
    9, 26, 30, 0, 0, 0;...
    25, 26, 29, 31, 22, 0;...
    26, 28, 30, 31, 32, 0;...
    27, 29, 32, 33, 0, 0;...
    28, 29, 32, 0, 0, 0;...
    29, 30, 31, 33, 34, 0;...
    30, 32, 34, 35, 36, 0;...
    32, 33, 36, 0, 0, 0;...
    33, 36, 44, 41, 0, 0;...
    33, 34, 35, 44, 47, 0;...
    38, 39, 0, 0, 0, 0;...
    37, 39, 40, 0, 0, 0;...
    37, 38, 40, 41, 42, 0;...
    1, 38, 39, 43, 0, 0;...
    35, 39, 42, 44, 45, 46;...
    39, 41, 43, 46, 0, 0;...
    40, 42, 0, 0, 0, 0;...
    35, 36, 41, 45, 47, 0;...
    41, 44, 46, 47, 0, 0;...
    1, 41, 42, 45, 48, 0;...
    36, 44, 45, 48, 0, 0;...
    13, 46, 47, 0, 0, 0];

%Account for infection level
total3s = 0;
total2s = 0;
total1s = 0;
potentialCascades = 0;

for irow = 1:48
    for icol = 1:4
        switch infectionArray(irow, icol)
            case 3
                total3s = total3s + 1;
                for icheck = 1:6
                    if adjacentCities(irow, icheck) ~= 0
                        if infectionArray(adjacentCities(irow, icheck), icol) == 3
                            potentialCascades = potentialCascades + 1;
                        end
                    end
                end
            case 2
                total2s = total2s + 1;
            case 1
                total1s = total1s + 1;
        end
    end
end

boardScore(istep) = boardScore(istep) - 50*total3s;
boardScore(istep) = boardScore(istep) - 10*total2s;
boardScore(istep) = boardScore(istep) - 2*total1s;
boardScore(istep) = boardScore(istep) - 50*potentialCascades;

% Account for research stations
totalRS = 0;
if strcmp(players(currentPlayer), 'Ops Expert')
    for icheck = 1:48
        if researchStations(icheck) == 1
            totalRS = totalRS + 1;
        end
    end
    switch totalRS
        case 2
            boardScore(istep) = boardScore(istep) + 30;
        case 3
            boardScore(istep) = boardScore(istep) + 25;
        case 4
            boardScore(istep) = boardScore(istep) + 15;
        case 5
            boardScore(istep) = boardScore(istep) + 10;
    end
end

% Account for disease status
curedDiseases = 0;

for iDisease = 1:4
    if diseaseStatus(iDisease) > 0
        curedDiseases = curedDiseases + 1;
    end
end

boardScore(istep) = boardScore(istep) + 800*curedDiseases;

% Account for cards in current hand
totalBlue = 0;
totalYellow = 0;
totalBlack = 0;
totalRed = 0;
for icard = 2:14
    if currentPlayerArray(icard) ~= 0
        if currentPlayerArray(icard) <= 12
            totalBlue = totalBlue + 1;
        elseif currentPlayerArray(icard) <= 24
            totalYellow = totalYellow + 1;
        elseif currentPlayerArray(icard) <= 36
            totalBlack = totalBlack + 1;
        elseif currentPlayerArray(icard) <= 48
            totalRed = totalRed + 1;
        end
    end
end

if strcmp(players(currentPlayer), 'Scientist')
    if diseaseStatus(1) == 0 && totalBlue < 4
        boardScore(istep) = boardScore(istep) + 5^(totalBlue+1);
    end
    if diseaseStatus(2) == 0 && totalYellow < 4
        boardScore(istep) = boardScore(istep) + 5^(totalYellow+1);
    end
    if diseaseStatus(3) == 0 && totalBlack < 4
        boardScore(istep) = boardScore(istep) + 5^(totalBlack+1);
    end
    if diseaseStatus(4) == 0 && totalRed < 4
        boardScore(istep) = boardScore(istep) + 5^(totalRed+1);
    end
elseif strcmp(players(currentPlayer), 'Researcher')
    if diseaseStatus(1) == 0 && totalBlue <= 4
        boardScore(istep) = boardScore(istep) + 5^(totalBlue);
    end
    if diseaseStatus(2) == 0 && totalYellow <= 4
        boardScore(istep) = boardScore(istep) + 5^(totalYellow);
    end
    if diseaseStatus(3) == 0 && totalBlack <= 4
        boardScore(istep) = boardScore(istep) + 5^(totalBlack);
    end
    if diseaseStatus(4) == 0 && totalRed <= 4
        boardScore(istep) = boardScore(istep) + 5^(totalRed);
    end
else
    if diseaseStatus(1) == 0 && totalBlue <= 4
        boardScore(istep) = boardScore(istep) + 4^(totalBlue);
    end
    if diseaseStatus(2) == 0 && totalYellow <= 4
        boardScore(istep) = boardScore(istep) + 4^(totalYellow);
    end
    if diseaseStatus(3) == 0 && totalBlack <= 4
        boardScore(istep) = boardScore(istep) + 4^(totalBlack);
    end
    if diseaseStatus(4) == 0 && totalRed <= 4
        boardScore(istep) = boardScore(istep) + 4^(totalRed);
    end
end

end
%% Decide Best Score
highestScore = -10000;
bestState = 0;
for iscore = 1:length(boardScore)
    if boardScore(iscore) > highestScore
        highestScore = boardScore(iscore);
        bestState = iscore;
    end
end

bestTurn = possibleTurns{bestState};