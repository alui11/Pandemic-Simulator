function [currentBoardState, isWin, isLoss, playerDeck] = algorithmRandomF
% Random moving Pandemic Algorithm

%% Game Set-Up

currentBoardState = initializeBoardStateF;
infectionDeck = initializeInfectionDeckF;
[infectionDeck, currentBoardState] =...
    initialInfectionF(infectionDeck, currentBoardState);
playerDeck = preInitializePlayerDeckF;
[playerDeck, currentBoardState] =...
    initialDealF(playerDeck, currentBoardState);
playerDeck = initializePlayerDeckF(playerDeck);

isWin = false;
isLoss = false;
epidemics = 0;

%% Choose players

players = {'Scientist', 'Medic', 'Ops Expert', 'Researcher'};
currentPlayer = 1;

%% Game Play
% hwb = waitbar(0, 'Playing...');
while ~isWin && ~isLoss
    possibleTurns = possibleTurnsF(currentBoardState, players, currentPlayer);
    % choose random turn
    currentBoardState = possibleTurns{randi(length(possibleTurns))};
    if currentBoardState{7}(1) > 0 && currentBoardState{7}(2) > 0 && currentBoardState{7}(3) > 0 && currentBoardState{7}(4) > 0
        isWin = true;
    end
    if ~isWin
        [playerDeck, infectionDeck, currentBoardState, epidemics, isLoss] = playerDeckDrawF(playerDeck, infectionDeck, currentBoardState, currentPlayer, epidemics);
        if ~isLoss
            [currentBoardState, infectionDeck, isLoss] = infectionDeckDrawF(epidemics, currentBoardState, infectionDeck);
            if currentPlayer == 4
                currentPlayer = 1;
            else
                currentPlayer = currentPlayer + 1;
            end
        end
    end
%     waitbar(currentBoardState{8}/8, hwb);
end
% close(hwb)
%% Game End

if isWin
    disp('Win')
elseif isLoss
    disp('Loss')
end
    
    
    
    