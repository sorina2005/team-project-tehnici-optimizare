function grafic(locations, graph, path, airportNames)
    figure; hold on;
    title('Animatie a traseului optim (transport aerian cu minimizare costuri si emisii carbon) ');

    % totalitatea rutelor disponibile
    for i = 1:size(graph, 1)
        for j = i+1:size(graph, 1)
            if graph(i, j) > 0
                plot([locations(i,1), locations(j,1)], ...
                     [locations(i,2), locations(j,2)], ...
                     'Color', [0.6 0.6 0.6], 'LineWidth', 1, 'LineStyle', '--'); 
            end
        end
    end

    % desenare aeroporturi
    scatter(locations(:,1), locations(:,2), 120, 'b', 'filled');
    for i = 1:size(locations, 1)
        text(locations(i,1), locations(i,2), ['  ' airportNames{i}], ...
            'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k');
    end


    % simulare animatie traseu optim
    for k = 1:length(path)-1
        plot([locations(path(k),1), locations(path(k+1),1)], ...
             [locations(path(k),2), locations(path(k+1),2)], ...
             'r-', 'LineWidth', 3);

        avion = scatter(locations(path(k+1),1), locations(path(k+1),2), 100, 'm', 'filled');
        pause(0.8);
        delete(avion);
    end

    scatter(locations(path(1),1), locations(path(1),2), 150, 'g', 'filled');
    scatter(locations(path(end),1), locations(path(end),2), 150, 'r', 'filled');

    legend({'Rute disponibile', 'Aeroporturi', 'Traseu optim', 'Start', 'Destinație'}, ...
        'Location', 'BestOutside');
    
    hold off;


end