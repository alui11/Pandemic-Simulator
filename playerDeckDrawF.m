function [playerDeckOut, infectionDeckOut, currentBoardStateOut, epidemicsOut, isLoss] = playerDeckDrawF(playerDeck, infectionDeck, currentBoardState, currentPlayer, epidemics)
% [playerDeckOut, infectionDeckOut, currentBoardStateOut,...
%   isWin, isLoss] =...
%   playerDeckDrawF(playerDeck, infectionDeck,...
%   currentBoardState, currentPlayer)
% Draws two cards from player deck and adds to current player's hand
% Also resolves epidemics


%% Loss?

isLoss = false;

%% Draw

noneLeft = true;

for istep = 1:57
    if playerDeck(istep).location == 1
        if istep <= 48
            finished = false;
            for icard = 2:14
                if currentBoardState{currentPlayer}(icard) == 0 && finished == false
                    currentBoardState{currentPlayer}(icard) = istep;
                    finished = true;
                end
            end
        elseif istep >= 54
            epidemics = epidemics + 1;
            [infectionDeck, currentBoardState] = epidemicF(infectionDeck, currentBoardState);
        end
        playerDeck(istep).location = 0;
    elseif playerDeck(istep).location == 2
        noneLeft = false;
        if istep <= 48
            finished = false;
            for icard = 2:14
                if currentBoardState{currentPlayer}(icard) == 0 && finished == false
                    currentBoardState{currentPlayer}(icard) = istep;
                    finished = true;
                end
            end
        elseif istep >= 54
            epidemics = epidemics + 1;
            [infectionDeck, currentBoardState] = epidemicF(infectionDeck, currentBoardState);
        end
        playerDeck(istep).location = 0;
    elseif playerDeck(istep).location ~= 0
        playerDeck(istep).location = playerDeck(istep).location - 2;
    end
end

%% Send info

playerDeckOut = playerDeck;
currentBoardStateOut = currentBoardState;
epidemicsOut = epidemics;
infectionDeckOut = infectionDeck;

%% Loss?

if noneLeft == true;
    isLoss = true;
end
