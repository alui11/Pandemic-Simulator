function [currentBoardState, isWin, isLoss, playerDeck] = algorithm4T

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
% updateGUIF(currentBoardState, players, playerDeck, handles)
% drawnow
%% Game Play
turnNumber = 1;
% hwb = waitbar(0, 'Playing...');
while ~isWin && ~isLoss
    possibleTurns = possibleTurnsF(currentBoardState, players, currentPlayer);
    % choose best turn
    currentBoardState = formula4(possibleTurns, players, currentPlayer);
%     updateGUIF(currentBoardState, players, playerDeck, handles)
%     drawnow
    if currentBoardState{7}(1) > 0 && currentBoardState{7}(2) > 0 && currentBoardState{7}(3) > 0 && currentBoardState{7}(4) > 0
        isWin = true;
    end
    if ~isWin
        [playerDeck, infectionDeck, currentBoardState, epidemics, isLoss] = playerDeckDrawF(playerDeck, infectionDeck, currentBoardState, currentPlayer, epidemics);
%         updateGUIF(currentBoardState, players, playerDeck, handles)
%         drawnow
        if ~isLoss
            [currentBoardState, infectionDeck, isLoss] = infectionDeckDrawF(epidemics, currentBoardState, infectionDeck);
%             updateGUIF(currentBoardState, players, playerDeck, handles)
%             drawnow
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
%     handles.winnerorLoser.String='YOU ARE A WINNER!!!!!!'
%     set(handles.winnerorLoser, 'Visible', 'on');
elseif isLoss
    disp('Loss')
%     handles.winnerorLoser.String='You lose. Try again'
%     set(handles.winnerorLoser, 'Visible', 'on');
end
    
    
    
    