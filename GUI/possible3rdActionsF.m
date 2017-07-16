function possibleActions = possible3rdActionsF(currentBoardState, players, currentPlayer)
% possibleActions = possible3rdActionsF(currentBoardState, players,
% currentPlayer)
% Out puts 1xn cell array of all possible new board states after one
% action is taken by the current player.
% currentBoardState = 1x8 cell array
% players = 1x4 cell array of strings indicating characters
% currentPlayer = double between 1 and 4

%% Separate board state into components

player1array = currentBoardState{1};
player2array = currentBoardState{2};
player3array = currentBoardState{3};
player4array = currentBoardState{4};

switch currentPlayer
    case 1
        currentPlayerName = players{1};
        currentPlayerArray = player1array;
    case 2
        currentPlayerName = players{2};
        currentPlayerArray = player2array;
    case 3
        currentPlayerName = players{3};
        currentPlayerArray = player3array;
    case 4
        currentPlayerName = players{4};
        currentPlayerArray = player4array;
end

infectionArray = currentBoardState{5};
researchStations = currentBoardState{6};
diseaseStatus = currentBoardState{7};

%% Possible City Arrays

possibleCities = [13, 2, 46, 40, 0, 0;...
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

%% Initialize possible first actions array

possibleActions = {currentBoardState};

%% Drive/Ferry

%move to connected city
for istep = 1:6
    if possibleCities(currentPlayerArray(1), istep) ~= 0
        potentialCity = possibleCities(currentPlayerArray(1), istep);
        if researchStations(potentialCity) == 1 || player1array(1) == potentialCity || player2array(1) == potentialCity || player3array(1) == potentialCity || player4array(1) == potentialCity || sum(infectionArray(potentialCity, :)) ~= 0
            newBoardState = currentBoardState;
            newBoardState{currentPlayer}(1) =...
                possibleCities(currentPlayerArray(1), istep);
            possibleActions{length(possibleActions)+1} = newBoardState;
        end
    end
end
%move between research stations
if researchStations(currentPlayerArray(1)) == 1
    for istep = 1:48
        if researchStations(istep) == 1 && istep ~= currentPlayerArray(1)
            if player1array(1) == istep || player2array(1) == istep || player3array(1) == istep || player4array(1) == istep || sum(infectionArray(istep, :)) ~= 0
                newBoardState = currentBoardState;
                newBoardState{currentPlayer}(1) = istep;
                possibleActions{length(possibleActions)+1} = newBoardState;
            end
        end
    end
end

%Dispatcher - move people around
% if strcmp(currentPlayerName, 'Dispatcher')
%     for iplayer = 1:4
%         if currentPlayer ~= iplayer
%             for istep = 1:6
%                 if possibleCities(currentBoardState{iplayer}(1), istep) ~= 0
%                     newBoardState = currentBoardState;
%                     newBoardState{iplayer}(1) = possibleCities(currentBoardState{iplayer}(1), istep);
%                     possibleActions{length(possibleActions)+1} = newBoardState;
%                 end
%             end
%             if researchStations(currentBoardState{iplayer}(1)) == 1
%                 for istep = 1:48
%                     if researchStations(istep) == 1 && istep ~= currentBoardState{iplayer}(1)
%                         newBoardState = currentBoardState;
%                         newBoardState{iplayer}(1) = istep;
%                         possibleActions{length(possibleActions)+1} = newBoardState;
%                     end
%                 end
%             end
%         end
%     end
% end

%% Charter Flight

for istep = 2:14
    if strcmp(currentPlayerName, 'Ops Expert') && researchStations(currentPlayerArray(1)) == 1 && currentPlayerArray(istep) ~= 0
        newBoardState = currentBoardState;
        newBoardState{currentPlayer}(istep) = 0;
        for icity = 1:48
            if sum(infectionArray(icity, :)) >= 3 || researchStations(icity) == 1
            newBoardState{currentPlayer}(1) = icity;
            possibleActions{length(possibleActions)+1} = newBoardState;
            end
        end
    elseif currentPlayerArray(1) == currentPlayerArray(istep) && strcmp(currentPlayerName, 'Researcher')
        newBoardState = currentBoardState;
        newBoardState{currentPlayer}(istep) = 0;
        for icity = 1:48
            if sum(infectionArray(icity, :)) >= 3 || researchStations(icity) == 1 || player1array(1) == icity || player2array(1) == icity || player3array(1) == icity || player4array(1) == icity
                if icity ~= currentPlayerArray(1)
                    newBoardState{currentPlayer}(1) = icity;
                    possibleActions{length(possibleActions)+1} = newBoardState;
                end
            end
        end
    elseif currentPlayerArray(1) == currentPlayerArray(istep)
        newBoardState = currentBoardState;
        newBoardState{currentPlayer}(istep) = 0;
        for icity = 1:48
            if sum(infectionArray(icity, :)) >= 3 || researchStations(icity) == 1
            newBoardState{currentPlayer}(1) = icity;
            possibleActions{length(possibleActions)+1} = newBoardState;
            end
        end
    end
end

%% Direct Flight
for istep = 2:14
    if currentPlayerArray(istep) ~= 0 && currentPlayerArray(1) ~= currentPlayerArray(istep)
%         if strcmp('Dispatcher', currentPlayerName)
%             for iplayer = 1:4
%                 if currentPlayer ~= iplayer
%                     newBoardState = currentBoardState;
%                     newBoardState{iplayer}(1) = newBoardState{currentPlayer}(istep);
%                     newBoardState{currentPlayer}(istep) = 0;
%                     possibleActions{length(possibleActions)+1} = newBoardState;
%                 end
%             end
%         end
        potentialCity = currentPlayerArray(istep);
        if researchStations(potentialCity) == 1 || player1array(1) == potentialCity || player2array(1) == potentialCity || player3array(1) == potentialCity || player4array(1) == potentialCity || sum(infectionArray(potentialCity, :)) ~= 0
            newBoardState = currentBoardState;
            newBoardState{currentPlayer}(1) = newBoardState{currentPlayer}(istep);
            newBoardState{currentPlayer}(istep) = 0;
            possibleActions{length(possibleActions)+1} = newBoardState;
        end
    end
end

%Move pawns to each other
% if strcmp('Dispatcher', currentPlayerName)
%     moreOptions = [player1array(1), player2array(1), player3array(1), player4array(1)];
%     for iplayer = 1:4
%         for ioption = 1:4
%             if currentBoardState{iplayer}(1) ~= moreOptions(ioption)
%                 newBoardState = currentBoardState;
%                 newBoardState{iplayer}(1) = moreOptions(ioption);
%                 possibleActions{length(possibleActions)+1} = newBoardState;
%             end
%         end
%     end
% end

%% Treat

for istep = 1:4
    if diseaseStatus(istep) == 1 || strcmp(currentPlayerName, 'Medic')
        if infectionArray(currentPlayerArray(1), istep) ~= 0
            newBoardState = currentBoardState;
            newBoardState{5}(currentPlayerArray(1), istep) = 0;
            possibleActions{length(possibleActions)+1} = newBoardState;
        end
    elseif infectionArray(currentPlayerArray(1), istep) ~= 0
        newBoardState = currentBoardState;
        newBoardState{5}(currentPlayerArray(1), istep) = newBoardState{5}(currentPlayerArray(1), istep) - 1;
        possibleActions{length(possibleActions)+1} = newBoardState;
    end
end

%% Build
doNotBuild = false;
if strcmp(currentPlayerName, 'Ops Expert') && researchStations(currentPlayerArray(1)) == 0
    for icity = 1:6
        if possibleCities(currentPlayerArray(1), icity) ~= 0
            if researchStations(possibleCities(currentPlayerArray(1), icity)) == 1
                doNotBuild = true;
            else
                for i2city = 1:6
                    if possibleCities(possibleCities(currentPlayerArray(1), icity), i2city) ~= 0
                        if researchStations(possibleCities(possibleCities(currentPlayerArray(1), icity), i2city)) == 1
                            doNotBuild = true;
                        end
                    end
                end
            end
        end
    end
    if doNotBuild == false
        newBoardState = currentBoardState;
        newBoardState{6}(currentPlayerArray(1)) = 1;
        possibleActions{length(possibleActions)+1} = newBoardState;
    end
% else
%     for istep = 2:14
%         if currentPlayerArray(1) == currentPlayerArray(istep) && researchStations(currentPlayerArray(1)) == 0
%             newBoardState = currentBoardState;
%             newBoardState{6}(currentPlayerArray(1)) = 1;
%             newBoardState{currentPlayer}(istep) = 0;
%             possibleActions{length(possibleActions)+1} = newBoardState;
%         end
%     end
end

%% Share knowledge

if strcmp(currentPlayerName, 'Researcher')
    for iplayer = 1:4
        if currentPlayerArray(1) == currentBoardState{iplayer}(1) && iplayer ~= currentPlayer
            for istep = 2:14
                if currentPlayerArray(istep) ~= 0
                    newBoardState = currentBoardState;
                    finished = false;
                    for icard = 2:14
                        if newBoardState{iplayer}(icard) == 0 && finished == false
                            newBoardState{iplayer}(icard) = newBoardState{currentPlayer}(istep);
                            finished = true;
                        end
                    end
                    newBoardState{currentPlayer}(istep) = 0;
                    possibleActions{length(possibleActions)+1} = newBoardState;
                end
                if currentPlayerArray(1) == currentBoardState{iplayer}(istep)
                    newBoardState = currentBoardState;
                    finished = false;
                    for icard = 2:14
                        if newBoardState{currentPlayer}(icard) == 0 && finished == false;
                            newBoardState{currentPlayer}(icard) = currentPlayerArray(1);
                            finished = true;
                        end
                    end
                    newBoardState{iplayer}(istep) = 0;
                    possibleActions{length(possibleActions)+1} = newBoardState;
                end
            end
        end
    end
else
    for iplayer = 1:4
        if currentPlayerArray(1) == currentBoardState{iplayer}(1) && currentPlayer ~= iplayer
            for istep = 2:14
                if currentPlayerArray(1) == currentPlayerArray(istep)
                    newBoardState = currentBoardState;
                    finished = false;
                    for icard = 2:14
                        if newBoardState{iplayer}(icard) == 0 && finished == false
                            newBoardState{iplayer}(icard) = currentPlayerArray(1);
                            finished = true;
                        end
                    end
                    newBoardState{currentPlayer}(istep) = 0;
                    possibleActions{length(possibleActions)+1} = newBoardState;
                elseif currentPlayerArray(1) == currentBoardState{iplayer}(istep)
                    newBoardState = currentBoardState;
                    finished = false;
                    for icard = 2:14
                        if currentPlayerArray(icard) == 0 && finished == false
                            newBoardState{currentPlayer}(icard) = currentPlayerArray(1);
                            finished = true;
                        end
                    end
                    newBoardState{iplayer}(istep) = 0;
                    possibleActions{length(possibleActions)+1} = newBoardState;
                end
            end
        end
    end
end

%% Cure
blue = 0;
yellow = 0;
black = 0;
red = 0;

for istep = 2:14
    if currentPlayerArray(istep) ~= 0
        if currentPlayerArray(istep) <= 12
            blue = blue + 1;
        elseif currentPlayerArray(istep) <= 24
            yellow = yellow + 1;
        elseif currentPlayerArray(istep) <= 36
            black = black + 1;
        else
            red = red + 1;
        end
    end
end

if strcmp(currentPlayerName, 'Scientist')
    if blue >= 3 && diseaseStatus(1) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(1) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 12 && currentPlayerArray(istep) > 0 && cardCounter <= 3
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif yellow >= 3 && diseaseStatus(2) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(2) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 24 && currentPlayerArray(istep) > 12 && cardCounter <= 3
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif black >= 3 && diseaseStatus(3) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(3) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 36 && currentPlayerArray(istep) > 24 && cardCounter <= 3
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif red >= 3 && diseaseStatus(4) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(4) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 48 && currentPlayerArray(istep) > 36 && cardCounter <= 3
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    end
else
    if blue >= 4 && diseaseStatus(1) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(1) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 12 && currentPlayerArray(istep) > 0 && cardCounter <= 4
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif yellow >= 4 && diseaseStatus(2) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(2) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 24 && currentPlayerArray(istep) > 12 && cardCounter <= 4
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif black >= 4 && diseaseStatus(3) == 0 && researchStations(currentPlayerArray(1)) == 1
        newBoardState = currentBoardState;
        newBoardState{7}(3) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 36 && currentPlayerArray(istep) > 24 && cardCounter <= 4
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    elseif red >= 4 && diseaseStatus(4) == 0 && researchStations(currentPlayerArray(1)) == 1 
        newBoardState = currentBoardState;
        newBoardState{7}(4) = 1;
        cardCounter = 0;
        for istep = 2:14
            if currentPlayerArray(istep) <= 48 && currentPlayerArray(istep) > 36 && cardCounter <= 4
                newBoardState{currentPlayer}(istep) = 0;
                cardCounter = cardCounter + 1;
            end
        end
        possibleActions{length(possibleActions)+1} = newBoardState;
    end
end