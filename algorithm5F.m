function [currentBoardState, isWin, isLoss, playerDeck] = algorithm5F

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

%% Choose players and order

players = {'Scientist', 'Medic', 'Ops Expert', 'Researcher'};
players = players(randperm(4));
currentPlayer = 1;

%% Game Play
turnNumber = 1;
% hwb = waitbar(0, 'Playing...');
while ~isWin && ~isLoss
    possibleTurns = possibleTurnsF(currentBoardState, players, currentPlayer);
    % choose best turn
    currentBoardState = formula5(possibleTurns, players, currentPlayer);
    %
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
    turnNumber = turnNumber + 1;
%     waitbar(turnNumber/26, hwb);
end
% close(hwb)
%% Game End

if isWin
    disp('Win')
elseif isLoss
    disp('Loss')
end
    
    
    
    