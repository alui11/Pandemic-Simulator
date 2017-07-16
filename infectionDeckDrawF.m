function [currentBoardStateOut, infectionDeckOut, isLoss] = infectionDeckDrawF(epidemics, currentBoardState, infectionDeck)
% [currentBoardStateOut, infectionDeckOut] =
% infectionDeckDrawF(epidemics, currentBoardState, infectionDeck)
% Executes end of turn infection

%% Is Loss?

isLoss = false;

%% Set infectionRate

if epidemics <= 2
    infectionRate = 2;
else
    infectionRate = 3;
end

%% Draw and infect

for iDraw = 1:infectionRate
    for istep = 1:48
        if infectionDeck(istep).location == 1
            switch infectionDeck(istep).color
                case 'blue'
                    if currentBoardState{5}(istep, 1) == 3
                        currentBoardState{8} = currentBoardState{8} + 1;
                        currentBoardState = oubtreakF(istep, currentBoardState, 0);
                    else
                        currentBoardState{5}(istep, 1) = currentBoardState{5}(istep, 1) + 1;
                    end
                case 'yellow'
                    if currentBoardState{5}(istep, 2) == 3
                        currentBoardState{8} = currentBoardState{8} + 1;
                        currentBoardState = oubtreakF(istep, currentBoardState, 0);
                    else
                        currentBoardState{5}(istep, 2) = currentBoardState{5}(istep, 2) + 1;
                    end
                case 'black'
                    if currentBoardState{5}(istep, 3) == 3
                        currentBoardState{8} = currentBoardState{8} + 1;
                        currentBoardState = oubtreakF(istep, currentBoardState, 0);
                    else
                        currentBoardState{5}(istep, 3) = currentBoardState{5}(istep, 3) + 1;
                    end
                case 'red'
                    if currentBoardState{5}(istep, 4) == 3
                        currentBoardState{8} = currentBoardState{8} + 1;
                        currentBoardState = oubtreakF(istep, currentBoardState, 0);
                    else
                        currentBoardState{5}(istep, 4) = currentBoardState{5}(istep, 4) + 1;
                    end
            end
        end
    end
    for istep = 1:48
        infectionDeck(istep).location = infectionDeck(istep).location - 1;
    end
end

%% Outputs

if currentBoardState{8} > 7
    isLoss = true;
end

infectionDeckOut = infectionDeck;
currentBoardStateOut = currentBoardState;
