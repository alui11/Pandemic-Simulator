function possibleTurns = possibleTurnsF(currentBoardState, players, currentPlayer)
% possibleTurns = possibleTurnsF(currentBoardState, players, currentPlayer)
% Uses the function possibleActionsF to generate all possible
% outcome board states after 4 consecutive actions are taken
% (one turn).

after1turn = possibleActionsF(currentBoardState, players, currentPlayer);

after2turns = repmat({0}, 1, 1000000);
firstZero = 1;
for istate = 1:length(after1turn)
    holder = possibleActionsF(after1turn{istate}, players, currentPlayer);
%     after2turns = [after2turns, holder];
    after2turns(firstZero:firstZero + length(holder) - 1) = holder;
    firstZero = firstZero + length(holder);
end
after2turns = after2turns(1:firstZero-1);

after3turns = repmat({0}, 1, 1000000);
firstZero = 1;
for istate = 1:length(after2turns)
    holder = possible3rdActionsF(after2turns{istate}, players, currentPlayer);
%     after3turns = [after3turns, holder];
    after3turns(firstZero:firstZero + length(holder) - 1) = holder;
    firstZero = firstZero + length(holder);
end
after3turns = after3turns(1:firstZero-1);

after4turns = repmat({0}, 1, 1000000);
firstZero = 1;
% hwb = waitbar(0, 'Generating Possible Moves...');
for istate = 1:length(after3turns)
    holder = possible4thActionsF(after3turns{istate}, players, currentPlayer);
%     after4turns = [after4turns, holder];
    after4turns(firstZero:firstZero + length(holder) - 1) = holder;
    firstZero = firstZero + length(holder);
%     waitbar(istate/length(after3turns), hwb);
end
% close(hwb)
after4turns = after4turns(1:firstZero-1);

possibleTurns = after4turns;