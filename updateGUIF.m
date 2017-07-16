function updateGUIF(currentBoardState, players, playerDeck, handles)
% updateGUIF(currentBoardState, players, playerDeck, handles)
% Updates GUI to current board state

%% Separate board state into components

switch players{1}
    case 'Scientist'
        scientistArray = currentBoardState{1};
    case 'Researcher'
        researcherArray = currentBoardState{1};
    case 'Ops Expert'
        opsExpertArray = currentBoardState{1};
    case 'Medic'
        medicArray = currentBoardState{1};
end
switch players{2}
    case 'Scientist'
        scientistArray = currentBoardState{2};
    case 'Researcher'
        researcherArray = currentBoardState{2};
    case 'Ops Expert'
        opsExpertArray = currentBoardState{2};
    case 'Medic'
        medicArray = currentBoardState{2};
end
switch players{3}
    case 'Scientist'
        scientistArray = currentBoardState{3};
    case 'Researcher'
        researcherArray = currentBoardState{3};
    case 'Ops Expert'
        opsExpertArray = currentBoardState{3};
    case 'Medic'
        medicArray = currentBoardState{3};
end
switch players{4}
    case 'Scientist'
        scientistArray = currentBoardState{4};
    case 'Researcher'
        researcherArray = currentBoardState{4};
    case 'Ops Expert'
        opsExpertArray = currentBoardState{4};
    case 'Medic'
        medicArray = currentBoardState{4};
end

infectionArray = currentBoardState{5};
researchStations = currentBoardState{6};
diseaseStatus = currentBoardState{7};
outbreaks = currentBoardState{8};

%% Outbreaks

switch outbreaks
    case 0
        set(handles.outbreak0, 'Visible', 'on');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 1
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'on');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 2
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'on');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 3
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'on');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 4
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'on');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 5
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'on');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 6
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'on');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
    case 7
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'on');
        set(handles.outbreak8, 'Visible', 'off');
    otherwise
        set(handles.outbreak0, 'Visible', 'off');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'on');
end

%% Diseases Cured

switch diseaseStatus(1)
    case 0
        set(handles.d1,'bottom');
    case 1
        set(handles.d1,'top');
end
switch diseaseStatus(2)
    case 0
        set(handles.d2,'bottom');
    case 1
        set(handles.d2,'top');
end
switch diseaseStatus(3)
    case 0
        set(handles.d3,'bottom');
    case 1
        set(handles.d3,'top');
end
switch diseaseStatus(4)
    case 0
        set(handles.d4,'bottom');
    case 1
        set(handles.d4,'top');
end

%% Infections

switch infectionArray(1, 1)
    case 0
        handles.sanFranciscoDisease.String = '0';
    case 1
        handles.sanFranciscoDisease.String = '1';
    case 2
        handles.sanFranciscoDisease.String = '2';
    case 3
        handles.sanFranciscoDisease.String = '3';
end
switch infectionArray(2, 1)
    case 0
        handles.chicagoDisease.String = '0';
    case 1
        handles.chicagoDisease.String = '1';
    case 2
        handles.chicagoDisease.String = '2';
    case 3
        handles.chicagoDisease.String = '3';
end
switch infectionArray(3, 1)
    case 0
        handles.montrealDisease.String = '0';
    case 1
        handles.montrealDisease.String = '1';
    case 2
        handles.montrealDisease.String = '2';
    case 3
        handles.montrealDisease.String = '3';
end
switch infectionArray(4, 1)
    case 0
        handles.newYorkDisease.String = '0';
    case 1
        handles.newYorkDisease.String = '1';
    case 2
        handles.newYorkDisease.String = '2';
    case 3
        handles.newYorkDisease.String = '3';
end
switch infectionArray(5, 1)
    case 0
        handles.atlantaDisease.String = '0';
    case 1
        handles.atlantaDisease.String = '1';
    case 2
        handles.atlantaDisease.String = '2';
    case 3
        handles.atlantaDisease.String = '3';
end
switch infectionArray(6, 1)
    case 0
        handles.washingtonDisease.String = '0';
    case 1
        handles.washingtonDisease.String = '1';
    case 2
        handles.washingtonDisease.String = '2';
    case 3
        handles.washingtonDisease.String = '3';
end
switch infectionArray(7, 1)
    case 0
        handles.londonDisease.String = '0';
    case 1
        handles.londonDisease.String = '1';
    case 2
        handles.londonDisease.String = '2';
    case 3
        handles.londonDisease.String = '3';
end
switch infectionArray(8, 1)
    case 0
        handles.essenDisease.String = '0';
    case 1
        handles.essenDisease.String = '1';
    case 2
        handles.essenDisease.String = '2';
    case 3
        handles.essenDisease.String = '3';
end
switch infectionArray(9, 1)
    case 0
        handles.stPetersburgDisease.String = '0';
    case 1
        handles.stPetersburgDisease.String = '1';
    case 2
        handles.stPetersburgDisease.String = '2';
    case 3
        handles.stPetersburgDisease.String = '3';
end
switch infectionArray(10, 1)
    case 0
        handles.madridDisease.String = '0';
    case 1
        handles.madridDisease.String = '1';
    case 2
        handles.madridDisease.String = '2';
    case 3
        handles.madridDisease.String = '3';
end
switch infectionArray(11, 1)
    case 0
        handles.parisDisease.String = '0';
    case 1
        handles.parisDisease.String = '1';
    case 2
        handles.parisDisease.String = '2';
    case 3
        handles.parisDisease.String = '3';
end
switch infectionArray(12, 1)
    case 0
        handles.milanDisease.String = '0';
    case 1
        handles.milanDisease.String = '1';
    case 2
        handles.milanDisease.String = '2';
    case 3
        handles.milanDisease.String = '3';
end
switch infectionArray(13, 2)
    case 0
        handles.losAngelesDisease.String = '0';
    case 1
        handles.losAngelesDisease.String = '1';
    case 2
        handles.losAngelesDisease.String = '2';
    case 3
        handles.losAngelesDisease.String = '3';
end
switch infectionArray(14, 2)
    case 0
        handles.mexicoCityDisease.String = '0';
    case 1
        handles.mexicoCityDisease.String = '1';
    case 2
        handles.mexicoCityDisease.String = '2';
    case 3
        handles.mexicoCityDisease.String = '3';
end
switch infectionArray(15, 2)
    case 0
        handles.miamiDisease.String = '0';
    case 1
        handles.miamiDisease.String = '1';
    case 2
        handles.miamiDisease.String = '2';
    case 3
        handles.miamiDisease.String = '3';
end
switch infectionArray(16, 2)
    case 0
        handles.bogotaDisease.String = '0';
    case 1
        handles.bogotaDisease.String = '1';
    case 2
        handles.bogotaDisease.String = '2';
    case 3
        handles.bogotaDisease.String = '3';
end
switch infectionArray(17, 2)
    case 0
        handles.limaDisease.String = '0';
    case 1
        handles.limaDisease.String = '1';
    case 2
        handles.limaDisease.String = '2';
    case 3
        handles.limaDisease.String = '3';
end
switch infectionArray(18, 2)
    case 0
        handles.santiagoDisease.String = '0';
    case 1
        handles.santiagoDisease.String = '1';
    case 2
        handles.santiagoDisease.String = '2';
    case 3
        handles.santiagoDisease.String = '3';
end
switch infectionArray(19, 2)
    case 0
        handles.buenosAiresDisease.String = '0';
    case 1
        handles.buenosAiresDisease.String = '1';
    case 2
        handles.buenosAiresDisease.String = '2';
    case 3
        handles.buenosAiresDisease.String = '3';
end
switch infectionArray(20, 2)
    case 0
        handles.saoPauloDisease.String = '0';
    case 1
        handles.saoPauloDisease.String = '1';
    case 2
        handles.saoPauloDisease.String = '2';
    case 3
        handles.saoPauloDisease.String = '3';
end
switch infectionArray(21, 2)
    case 0
        handles.lagosDisease.String = '0';
    case 1
        handles.lagosDisease.String = '1';
    case 2
        handles.lagosDisease.String = '2';
    case 3
        handles.lagosDisease.String = '3';
end
switch infectionArray(22, 2)
    case 0
        handles.khartoumDisease.String = '0';
    case 1
        handles.khartoumDisease.String = '1';
    case 2
        handles.khartoumDisease.String = '2';
    case 3
        handles.khartoumDisease.String = '3';
end
switch infectionArray(23, 2)
    case 0
        handles.kinshasaDisease.String = '0';
    case 1
        handles.kinshasaDisease.String = '1';
    case 2
        handles.kinshasaDisease.String = '2';
    case 3
        handles.kinshasaDisease.String = '3';
end
switch infectionArray(24, 2)
    case 0
        handles.johannesburgDisease.String = '0';
    case 1
        handles.johannesburgDisease.String = '1';
    case 2
        handles.johannesburgDisease.String = '2';
    case 3
        handles.johannesburgDisease.String = '3';
end
switch infectionArray(25, 3)
    case 0
        handles.algiersDisease.String = '0';
    case 1
        handles.algiersDisease.String = '1';
    case 2
        handles.algiersDisease.String = '2';
    case 3
        handles.algiersDisease.String = '3';
end
switch infectionArray(26, 3)
    case 0
        handles.istanbulDisease.String = '0';
    case 1
        handles.istanbulDisease.String = '1';
    case 2
        handles.istanbulDisease.String = '2';
    case 3
        handles.istanbulDisease.String = '3';
end
switch infectionArray(27, 3)
    case 0
        handles.moscowDisease.String = '0';
    case 1
        handles.moscowDisease.String = '1';
    case 2
        handles.moscowDisease.String = '2';
    case 3
        handles.moscowDisease.String = '3';
end
switch infectionArray(28, 3)
    case 0
        handles.cairoDisease.String = '0';
    case 1
        handles.cairoDisease.String = '1';
    case 2
        handles.cairoDisease.String = '2';
    case 3
        handles.cairoDisease.String = '3';
end
switch infectionArray(29, 3)
    case 0
        handles.baghdadDisease.String = '0';
    case 1
        handles.baghdadDisease.String = '1';
    case 2
        handles.baghdadDisease.String = '2';
    case 3
        handles.baghdadDisease.String = '3';
end
switch infectionArray(30, 3)
    case 0
        handles.tehranDisease.String = '0';
    case 1
        handles.tehranDisease.String = '1';
    case 2
        handles.tehranDisease.String = '2';
    case 3
        handles.tehranDisease.String = '3';
end
switch infectionArray(31, 3)
    case 0
        handles.riyadhDisease.String = '0';
    case 1
        handles.riyadhDisease.String = '1';
    case 2
        handles.riyadhDisease.String = '2';
    case 3
        handles.riyadhDisease.String = '3';
end
switch infectionArray(32, 3)
    case 0
        handles.karachiDisease.String = '0';
    case 1
        handles.karachiDisease.String = '1';
    case 2
        handles.karachiDisease.String = '2';
    case 3
        handles.karachiDisease.String = '3';
end
switch infectionArray(33, 3)
    case 0
        handles.delhiDisease.String = '0';
    case 1
        handles.delhiDisease.String = '1';
    case 2
        handles.delhiDisease.String = '2';
    case 3
        handles.delhiDisease.String = '3';
end
switch infectionArray(34, 3)
    case 0
        handles.mumbaiDisease.String = '0';
    case 1
        handles.mumbaiDisease.String = '1';
    case 2
        handles.mumbaiDisease.String = '2';
    case 3
        handles.mumbaiDisease.String = '3';
end
switch infectionArray(35, 3)
    case 0
        handles.kolkataDisease.String = '0';
    case 1
        handles.kolkataDisease.String = '1';
    case 2
        handles.kolkataDisease.String = '2';
    case 3
        handles.kolkataDisease.String = '3';
end
switch infectionArray(36, 3)
    case 0
        handles.chennaiDisease.String = '0';
    case 1
        handles.chennaiDisease.String = '1';
    case 2
        handles.chennaiDisease.String = '2';
    case 3
        handles.chennaiDisease.String = '3';
end
switch infectionArray(37, 4)
    case 0
        handles.beijingDisease.String = '0';
    case 1
        handles.beijingDisease.String = '1';
    case 2
        handles.beijingDisease.String = '2';
    case 3
        handles.beijingDisease.String = '3';
end
switch infectionArray(38, 4)
    case 0
        handles.seoulDisease.String = '0';
    case 1
        handles.seoulDisease.String = '1';
    case 2
        handles.seoulDisease.String = '2';
    case 3
        handles.seoulDisease.String = '3';
end
switch infectionArray(39, 4)
    case 0
        handles.shanghaiDisease.String = '0';
    case 1
        handles.shanghaiDisease.String = '1';
    case 2
        handles.shanghaiDisease.String = '2';
    case 3
        handles.shanghaiDisease.String = '3';
end
switch infectionArray(40, 4)
    case 0
        handles.tokyoDisease.String = '0';
    case 1
        handles.tokyoDisease.String = '1';
    case 2
        handles.tokyoDisease.String = '2';
    case 3
        handles.tokyoDisease.String = '3';
end
switch infectionArray(41, 4)
    case 0
        handles.hongKongDisease.String = '0';
    case 1
        handles.hongKongDisease.String = '1';
    case 2
        handles.hongKongDisease.String = '2';
    case 3
        handles.hongKongDisease.String = '3';
end
switch infectionArray(42, 4)
    case 0
        handles.taipeiDisease.String = '0';
    case 1
        handles.taipeiDisease.String = '1';
    case 2
        handles.taipeiDisease.String = '2';
    case 3
        handles.taipeiDisease.String = '3';
end
switch infectionArray(43, 4)
    case 0
        handles.osakaDisease.String = '0';
    case 1
        handles.osakaDisease.String = '1';
    case 2
        handles.osakaDisease.String = '2';
    case 3
        handles.osakaDisease.String = '3';
end
switch infectionArray(44, 4)
    case 0
        handles.bangkokDisease.String = '0';
    case 1
        handles.bangkokDisease.String = '1';
    case 2
        handles.bangkokDisease.String = '2';
    case 3
        handles.bangkokDisease.String = '3';
end
switch infectionArray(45, 4)
    case 0
        handles.hoChiMinhDisease.String = '0';
    case 1
        handles.hoChiMinhDisease.String = '1';
    case 2
        handles.hoChiMinhDisease.String = '2';
    case 3
        handles.hoChiMinhDisease.String = '3';
end
switch infectionArray(46, 4)
    case 0
        handles.manilaDisease.String = '0';
    case 1
        handles.manilaDisease.String = '1';
    case 2
        handles.manilaDisease.String = '2';
    case 3
        handles.manilaDisease.String = '3';
end
switch infectionArray(47, 4)
    case 0
        handles.jakartaDisease.String = '0';
    case 1
        handles.jakartaDisease.String = '1';
    case 2
        handles.jakartaDisease.String = '2';
    case 3
        handles.jakartaDisease.String = '3';
end
switch infectionArray(48, 4)
    case 0
        handles.sydneyDisease.String = '0';
    case 1
        handles.sydneyDisease.String = '1';
    case 2
        handles.sydneyDisease.String = '2';
    case 3
        handles.sydneyDisease.String = '3';
end

%% Cards

scientistCards = {};
researcherCards = {};
opsExpertCards = {};
medicCards = {};

for icard = 2:14
    if scientistArray(icard) ~= 0
        scientistCards = [scientistCards, playerDeck(scientistArray(icard)).name];
    end
    if researcherArray(icard) ~= 0
        researcherCards = [researcherCards, playerDeck(researcherArray(icard)).name];
    end
    if opsExpertArray(icard) ~= 0
        opsExpertCards = [opsExpertCards, playerDeck(opsExpertArray(icard)).name];
    end
    if medicArray(icard) ~= 0
        medicCards = [medicCards, playerDeck(medicArray(icard)).name];
    end
end

handles.scientistCards.String = scientistCards;
handles.researcherCards.String = researchCards;
handles.operationsECards.String = opsExpertCards;
handles.medicCards.String = medicCards;
    