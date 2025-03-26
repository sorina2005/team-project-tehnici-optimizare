function [dist, path] = aStar(graph, emissions, startNode, endNode, locations, maxCarbon) % functia A* in functie de costuri si emisii de carbon

    N = size(graph, 1); % Numar total de aeroporturi
    
    %Initializare
    dist = inf(1, N);
    dist(startNode) = 0;
    prev = -ones(1, N);
    fScore = inf(1, N);
    fScore(startNode) = euristic(startNode, endNode, locations);
    openSet = startNode;

    
end