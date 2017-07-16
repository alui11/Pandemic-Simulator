function [playerDeckOut, boardStateOut] = initialDealF(playerDeck, currentBoardState)
% [playerDeckOut, boardStateOut] =
%      initialDealF(playerDeck, currentBoardState)
% Executes initial deal

%% Initial Deal

for icard = 1:48
    if playerDeck(icard).location == 1
            currentBoardState{1}(2) = icard;
    elseif playerDeck(icard).location == 2
            currentBoardState{2}(2) = icard;
    elseif playerDeck(icard).location == 3
            currentBoardState{3}(2) = icard;
    elseif playerDeck(icard).location == 4
            currentBoardState{4}(2) = icard;
    elseif playerDeck(icard).location == 5
            currentBoardState{1}(3) = icard;
    elseif playerDeck(icard).location == 6
            currentBoardState{2}(3) = icard;
    elseif playerDeck(icard).location == 7
            currentBoardState{3}(3) = icard;
    elseif playerDeck(icard).location == 8
            currentBoardState{4}(3) = icard;
    end
end

for istep = 1:53
    if playerDeck(istep).location <= 8
        playerDeck(istep).location = 0;
    end
end

%% Send data
boardStateOut = currentBoardState;
playerDeckOut = playerDeck;