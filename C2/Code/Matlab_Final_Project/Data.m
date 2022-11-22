classdef Data
    
    properties
        covidData
        Date
        Country
        i_Country
        State
        i_State
    end
    
    methods
        function obj = Data(in)
            load covid_data.mat covid_data
            obj.covidData = covid_data;
            obj.Country = covid_data(:, 1);        
            obj.Date = covid_data(1, 3:end);
            obj.Country{1} = 'Global';
            [~, n] = ismember(obj.Country, in);
            [~, obj.i_Country] = max(n);
            obj.i_State = obj.i_Country : (obj.i_Country + sum(n) - 1);
            obj.State = covid_data(obj.i_State, 2);
            obj.State{1} = 'All';
        end
        
        function obj = Cases_Vector(obj, inc)
            CasesV = zeros(1, length(obj.Date));
            for i = 3 : length(obj.Date) + 2
                CasesV(i - 2) = obj.covidData{inc, i}(1, 1);
            end
            obj = CasesV;
        end
        
        function obj = Deaths_Vector(obj, ind)
            DeathsV = zeros(1, length(obj.Date));
            for i = 3 : length(obj.Date) + 2
                DeathsV(i - 2) = obj.covidData{ind, i}(1, 2);
            end
            obj = DeathsV;
        end
        
        function obj = global_Cases_And_Deaths(obj)
            states = obj.covidData(:, 2);
            All = zeros(1, length(states));
            global_Cases = zeros(length(states), length(obj.Date));
            global_Deaths = zeros(length(states), length(obj.Date));
            for i = 1 : length(states)
                if isempty(states{i})
                    All(i) = i;
                end
            end
            for g = 1 : length(states)
                if All(g) == 0
                    continue;
                else
                    for j = 3 : length(obj.Date) + 2
                        global_Cases(g, j - 2) = obj.covidData{g, j}(1, 1);
                    end
                    for k = 3 : length(obj.Date) + 2
                        global_Deaths(g, k - 2) = obj.covidData{g, k}(1, 2);
                    end
                end
            end
            obj = [sum(global_Cases); sum(global_Deaths)];
        end
    end
end
        