function [infectionDeckOut, currentBoardStateOut] = initialInfectionF(infectionDeck, currentBoardState)
% [infectionDeckout, currentBoardStateout] =
% initialInfectionF(infectionDeck, currentBoardState)
% Executes initial infection

for iInfectionLevel = 3:-1:1
    for iDraw = 1:3
        for istep = 1:48
            if infectionDeck(istep).location == 1
                switch infectionDeck(istep).color
                    case 'blue'
                        currentBoardState{5}(istep, 1) = iInfectionLevel;
                    case 'yellow'
                        currentBoardState{5}(istep, 2) = iInfectionLevel;
                    case 'black'
                        currentBoardState{5}(istep, 3) = iInfectionLevel;
                    case 'red'
                        currentBoardState{5}(istep, 4) = iInfectionLevel;
                end
            end
        end
        for istep = 1:48
            infectionDeck(istep).location = infectionDeck(istep).location - 1;
        end
    end
end

infectionDeckOut = infectionDeck;
currentBoardStateOut = currentBoardState;