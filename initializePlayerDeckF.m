function playerDeckOut = initializePlayerDeckF(playerDeck)
% playerDeckOut = initializePlayerDeckF(playerDeck)
% Shuffles in epidemics after initial deal

%% Second shuffle

first12 = randperm(13);
second11 = randperm(12);
third11 = randperm(12);
fourth11 = randperm(12);
counter1 = 0;
counter2 = 0;
counter3 = 0;
counter4 = 0;

for istep = 1:53
    endloop = false;
    for ilocation = 9:4:53
        if playerDeck(istep).location == ilocation && endloop == false
            counter1 = counter1 + 1;
            playerDeck(istep).location = first12(counter1);
            endloop = true;
        end
    end
    if endloop == false
        for ilocation = 10:4:53
            if playerDeck(istep).location == ilocation && endloop == false
                counter2 = counter2 + 1;
                playerDeck(istep).location = second11(counter2) + 13;
                endloop = true;
            end
        end
    end
    if endloop == false
        for ilocation = 11:4:53
            if playerDeck(istep).location == ilocation && endloop == false
                counter3 = counter3 + 1;
                playerDeck(istep).location = third11(counter3) + 25;
                endloop = true;
            end
        end
    end
    if endloop == false
        for ilocation = 12:4:53
            if playerDeck(istep).location == ilocation && endloop == false
                counter4 = counter4 + 1;
                playerDeck(istep).location = fourth11(counter4) + 37;
                endloop = true;
            end
        end
    end
end

playerDeck(54).name = 'Epidemic';
playerDeck(54).location = first12(13);

playerDeck(55).name = 'Epidemic';
playerDeck(55).location = second11(12) + 13;

playerDeck(56).name = 'Epidemic';
playerDeck(56).location = third11(12) + 25;

playerDeck(57).name = 'Epidemic';
playerDeck(57).location = fourth11(12) + 37;

playerDeckOut = playerDeck;