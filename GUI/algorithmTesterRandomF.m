function algorithmTesterRandomF(handles)
% algorithmTester.m
% Runs several runs of a Pandemic algorithm and records average
% outbreaks, diseases cured, research stations built, player
% cards remaining, and win rate.

%% Set Parameters

runs = str2num(handles.Nruns.String);

%% Run games
hwb = waitbar(0, 'Playing...');

for iGame = 1:runs
    [currentBoardState, isWin, isLoss, playerDeck] = algorithmRandomT;
    outbreaks(iGame) = currentBoardState{8};
    if isWin == true;
        winOrLoss(iGame) = 1;
    elseif isLoss == true;
        winOrLoss(iGame) = 0;
    end
    rStations = -1;
    for icity = 1:48
        if currentBoardState{6}(icity) == 1
            rStations = rStations + 1;
        end
    end
    researchStations(iGame) = rStations;
    curedCounter = 0;
    for iDisease = 1:4
        if currentBoardState{7}(iDisease) == 1
            curedCounter = curedCounter + 1;
        end
    end
    diseasesCured(iGame) = curedCounter;
    highestCard = 0;
    for icard = 1:57
        if playerDeck(icard).location > highestCard
            highestCard = playerDeck(icard).location;
        end
    end
    cardsLeft(iGame) = highestCard;
    waitbar(iGame/runs, hwb);
end
close(hwb)
%% Calculate Stats


avgOutbreaks = mean(outbreaks);
avgRStations = mean(researchStations);
avgDiseasesCured = mean(diseasesCured);
avgCardsLeft = mean(cardsLeft);
winRate = sum(winOrLoss)/runs;
bar(handles.axes1, 1, winRate)
axis([0 4 0 1])
legend(handles.axes1, 'Random', 'location', 'best')


            