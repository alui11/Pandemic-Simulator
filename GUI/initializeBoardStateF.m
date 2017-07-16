function boardState = initializeBoardStateF
% Sets up initial board state (pre-initial infection,
% pre-initial deal)
% outputs: boardState

%% Choose players (from GUI)

%% Set player arrays and current player

player1array = [5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
player2array = [5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
player3array = [5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
player4array = [5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

currentPlayer = 1;

%% Set up infection array

infectionArray = zeros(48, 4);

%% Set up research stations

researchStations = zeros(48, 1);
researchStations(5) = 1;

%% Set disease statuses

diseaseStatus = zeros(1, 4);

%% Set outbreak counter

outbreaks = 0;

%% Put everything into cell array
boardState = {player1array, player2array, player3array,...
    player4array, infectionArray, researchStations,...
    diseaseStatus, outbreaks};

%% Send data

%setappdata(gcf, 'boardState', boardState);
%setappdata(gcf, 'currentPlayer', currentPlayer);
%setappdata(gcf, 'players', {player1, player2, player3, player 4});
