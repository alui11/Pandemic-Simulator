function [infectionDeckOut, currentBoardStateOut] = epidemicF(infectionDeck, currentBoardState)
% [infectionDeckOut, currentBoardStateOut] =
% epidemicF(epidemics, infectionDeck, currentBoardState)
% Resolves Epidemic card

%% Place 3-cube infection
highestLocation = 0;
for istep = 1:48
    if infectionDeck(istep).location > highestLocation
        highestLocation = infectionDeck(istep).location;
        bottomCard = istep;
    end
end
switch infectionDeck(bottomCard).color
    case 'blue'
        currentBoardState{5}(bottomCard, 1) = 3;
    case 'yellow'
        currentBoardState{5}(bottomCard, 2) = 3;
    case 'black'
        currentBoardState{5}(bottomCard, 3) = 3;
    case 'red'
        currentBoardState{5}(bottomCard, 4) = 3;
end
infectionDeck(bottomCard).location = 0;

%% Reshuffle discard pile
discardPile = 0;
for icard = 1:48
    if infectionDeck(icard).location <= 0
        discardPile = discardPile + 1;
    end
end
postEpidemicLocations = randperm(discardPile);
counter = 0;
for icard = 1:48
    if infectionDeck(icard).location <= 0
        counter = counter + 1;
        infectionDeck(icard).location = postEpidemicLocations(counter);
    else
        infectionDeck(icard).location = infectionDeck(icard).location + discardPile;
    end
end

%% Outputs
currentBoardStateOut = currentBoardState;
infectionDeckOut = infectionDeck;

