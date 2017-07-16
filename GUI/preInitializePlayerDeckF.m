function playerDeck = preInitializePlayerDeckF
% Creates and shuffles player deck (no epidemics)

%% Recall Cities Array

cities{1} = 'San Fran';
cities{2} = 'Chicago';
cities{3} = 'Montreal';
cities{4} = 'New York';
cities{5} = 'Atlanta';
cities{6} = 'Washington';
cities{7} = 'London';
cities{8} = 'Essen';
cities{9} = 'St. Petersburg';
cities{10} = 'Madrid';
cities{11} = 'Paris';
cities{12} = 'Milan';
cities{13} = 'Los Angeles';
cities{14} = 'Mexico City';
cities{15} = 'Miami';
cities{16} = 'Bogota';
cities{17} = 'Lima';
cities{18} = 'Santiago';
cities{19} = 'Buenos Aires';
cities{20} = 'Sao Paulo';
cities{21} = 'Lagos';
cities{22} = 'Khartoum';
cities{23} = 'Kinshasa';
cities{24} = 'Johannesburg';
cities{25} = 'Algiers';
cities{26} = 'Istanbul';
cities{27} = 'Moscow';
cities{28} = 'Cairo';
cities{29} = 'Baghdad';
cities{30} = 'Tehran';
cities{31} = 'Riyadh';
cities{32} = 'Karachi';
cities{33} = 'Delhi';
cities{34} = 'Mumbai';
cities{35} = 'Kolkata';
cities{36} = 'Chennai';
cities{37} = 'Beijing';
cities{38} = 'Seoul';
cities{39} = 'Shanghai';
cities{40} = 'Tokyo';
cities{41} = 'Hong Kong';
cities{42} = 'Taipei';
cities{43} = 'Osaka';
cities{44} = 'Bangkok';
cities{45} = 'Ho Chi Minh';
cities{46} = 'Manila';
cities{47} = 'Jakarta';
cities{48} = 'Sydney';

%% Create Deck Using Structure Array

for istep = 1:48
    playerDeck(istep).name = cities{istep};
    playerDeck(istep).location = istep;
    if istep <= 12
        playerDeck(istep).color = 'blue';
    elseif istep <= 24
        playerDeck(istep).color = 'yellow';
    elseif istep <= 36
        playerDeck(istep).color = 'black';
    else
        playerDeck(istep).color = 'red';
    end
end

for istep = 49:53
    playerDeck(istep).name = 'Event card';
    playerDeck(istep).location = istep;
end

%% Initial Shuffle

initialShuffle = randperm(53);
for istep = 1:53
    playerDeck(istep).location = initialShuffle(istep);
end
