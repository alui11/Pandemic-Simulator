function algorithmTesterF(handles)
% algorithmTester.m
% Runs several runs of a Pandemic algorithm and records average
% outbreaks, diseases cured, research stations built, player
% cards remaining, and win rate.

%% Set Parameters

runs = str2num(handles.Nruns.String);

%% Run games
hwb = waitbar(0, 'Playing...');
if handles.StrategyCompare1.Value==1
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
        avgOutbreaks = mean(outbreaks);
        avgRStations = mean(researchStations);
        avgDiseasesCured = mean(diseasesCured);
        avgCardsLeft = mean(cardsLeft);
        winRate = sum(winOrLoss)/runs;
        
    end
else
    winRate=0;
    avgOutbreaks = 0;
    avgRStations = 0;
    avgDiseasesCured = 0;
    avgCardsLeft = 0;
end
if handles.StrategyCompare2.Value==1
    for iGame = 1:runs
        [currentBoardState, isWin, isLoss, playerDeck] = algorithm2T;
        outbreaks2(iGame) = currentBoardState{8};
        if isWin == true;
            winOrLoss2(iGame) = 1;
        elseif isLoss == true;
            winOrLoss2(iGame) = 0;
        end
        rStations2 = -1;
        for icity = 1:48
            if currentBoardState{6}(icity) == 1
                rStations2 = rStations2 + 1;
            end
        end
        researchStations2(iGame) = rStations2;
        curedCounter2 = 0;
        for iDisease = 1:4
            if currentBoardState{7}(iDisease) == 1
                curedCounter2 = curedCounter2 + 1;
            end
        end
        diseasesCured2(iGame) = curedCounter2;
        highestCard2 = 0;
        for icard = 1:57
            if playerDeck(icard).location > highestCard2
                highestCard2 = playerDeck(icard).location;
            end
        end
        cardsLeft2(iGame) = highestCard2;
        waitbar(iGame/runs, hwb);
    end
    avgOutbreaks2 = mean(outbreaks2);
    avgRStations2 = mean(researchStations2);
    avgDiseasesCured2 = mean(diseasesCured2);
    avgCardsLeft2 = mean(cardsLeft2);
    winRate2 = sum(winOrLoss2)/runs;
else
    winRate2=0;
    avgOutbreaks2 = 0;
    avgRStations2 = 0;
    avgDiseasesCured2 = 0;
    avgCardsLeft2 = 0;
end
if handles.StrategyCompare3.Value==1
    for iGame = 1:runs
        [currentBoardState, isWin, isLoss, playerDeck] = algorithm5T;
        outbreaks3(iGame) = currentBoardState{8};
        if isWin == true;
            winOrLoss3(iGame) = 1;
        elseif isLoss == true;
            winOrLoss3(iGame) = 0;
        end
        rStations3 = -1;
        for icity = 1:48
            if currentBoardState{6}(icity) == 1
                rStations3 = rStations3 + 1;
            end
        end
        researchStations3(iGame) = rStations3;
        curedCounter3 = 0;
        for iDisease = 1:4
            if currentBoardState{7}(iDisease) == 1
                curedCounter3 = curedCounter3 + 1;
            end
        end
        diseasesCured3(iGame) = curedCounter3;
        highestCard3 = 0;
        for icard = 1:57
            if playerDeck(icard).location > highestCard3
                highestCard3 = playerDeck(icard).location;
            end
        end
        cardsLeft3(iGame) = highestCard3;
        waitbar(iGame/runs, hwb);
    end
    avgOutbreaks3 = mean(outbreaks3);
    avgRStations3 = mean(researchStations3);
    avgDiseasesCured3 = mean(diseasesCured3);
    avgCardsLeft3 = mean(cardsLeft3);
    winRate3 = sum(winOrLoss3)/runs;
else
    winRate3 = 0;
    avgOutbreaks3 = 0;
    avgRStations3 = 0;
    avgDiseasesCured3 = 0;
    avgCardsLeft3 = 0;
end
if handles.StrategyCompare4.Value==1
    for iGame = 1:runs
        [currentBoardState, isWin, isLoss, playerDeck] = algorithm4T;
        outbreaks4(iGame) = currentBoardState{8};
        if isWin == true;
            winOrLoss4(iGame) = 1;
        elseif isLoss == true;
            winOrLoss4(iGame) = 0;
        end
        rStations4 = -1;
        for icity = 1:48
            if currentBoardState{6}(icity) == 1
                rStations4 = rStations4 + 1;
            end
        end
        researchStations4(iGame) = rStations4;
        curedCounter4 = 0;
        for iDisease = 1:4
            if currentBoardState{7}(iDisease) == 1
                curedCounter4 = curedCounter4 + 1;
            end
        end
        diseasesCured4(iGame) = curedCounter4;
        highestCard4 = 0;
        for icard = 1:57
            if playerDeck(icard).location > highestCard4
                highestCard4 = playerDeck(icard).location;
            end
        end
        cardsLeft4(iGame) = highestCard4;
        waitbar(iGame/runs, hwb);
    end
    avgOutbreaks4 = mean(outbreaks4);
    avgRStations4 = mean(researchStations4);
    avgDiseasesCured4 = mean(diseasesCured4);
    avgCardsLeft4 = mean(cardsLeft4);
    winRate4 = sum(winOrLoss4)/runs;
else 
    winRate4 = 0;
    avgOutbreaks4 = 0;
    avgRStations4 = 0;
    avgDiseasesCured4 = 0;
    avgCardsLeft4 = 0;
end
close(hwb)
%% Calculate Stats
d = [avgCardsLeft, avgOutbreaks,avgDiseasesCured,avgRStations,winRate;...
    avgCardsLeft2, avgOutbreaks2,avgDiseasesCured2,avgRStations2,winRate2;...
    avgCardsLeft3, avgOutbreaks3,avgDiseasesCured3,avgRStations3,winRate3;...
    avgCardsLeft4, avgOutbreaks4,avgDiseasesCured4,avgRStations4,winRate4];
handles.dataTable.Data=d;
w = [winRate winRate2 winRate3 winRate4; 0 0 0 0];
bar( w) 
set(handles.axes1,'xtick',[])
legend(handles.axes1, 'Random','Treat over Cure' , 'Cure over Treat', 'Compromise', 'location', 'best')



            