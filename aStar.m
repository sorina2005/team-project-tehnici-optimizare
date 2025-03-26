function [dist, path] = aStar(graph, emissions, startNode, endNode, locations, maxCarbon) % functia A* in functie de costuri si emisii de carbon

    N = size(graph, 1); % numar total de aeroporturi
    
    % initializare
    dist = inf(1, N);
    dist(startNode) = 0;
    prev = -ones(1, N);
    fScore = inf(1, N);
    fScore(startNode) = euristic(startNode, endNode, locations);
    openSet = startNode;

      while ~isempty(openSet)
        % anodul cu cel mai mic fScore
        [~, idx] = min(fScore(openSet));
        current = openSet(idx);

        % daca am ajuns la destinatie, reconstuim calea
        if current == endNode
            path = [];
            while current ~= -1
                path = [current path];
                current = prev(current);
            end
            return;
        end
        
        % eliminare nod curent din OpenSet
        openSet(idx) = [];

        % parcurgere vecini nod curent
        for neighbor = 1:N
            if graph(current, neighbor) > 0 && emissions(current, neighbor) <= maxCarbon
                tentative_gScore = dist(current) + graph(current, neighbor);

                if tentative_gScore < dist(neighbor)
                    prev(neighbor) = current;
                    dist(neighbor) = tentative_gScore;
                    fScore(neighbor) = dist(neighbor) + euristic(neighbor, endNode, locations);

                    if ~ismember(neighbor, openSet)
                        openSet = [openSet, neighbor];
                    end
                end
            end
        end
    end
    
    % in cazul in care nu exista drum 
    path = [];
end