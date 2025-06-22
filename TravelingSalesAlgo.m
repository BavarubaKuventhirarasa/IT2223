function tsp_greedy_custom()
    % Your 4x4 weighted adjacency matrix (directed graph)
    adjMatrix = [
         0 16 11  6;
         8  0 13 16;
         4  7  0  9;
         5 12  2  0
    ];

    n = size(adjMatrix, 1);
    visited = false(1, n);
    path = zeros(1, n + 1);  % n cities + return to start
    totalDist = 0;

    current = 1;
    path(1) = current;
    visited(current) = true;

    for i = 2:n
        minDist = inf;
        nextNode = -1;
        for j = 1:n
            if ~visited(j) && adjMatrix(current, j) < minDist
                minDist = adjMatrix(current, j);
                nextNode = j;
            end
        end
        if nextNode == -1
            break;  % no unvisited nodes left
        end
        visited(nextNode) = true;
        totalDist = totalDist + minDist;
        path(i) = nextNode;
        current = nextNode;
    end

    % Return to start node
    totalDist = totalDist + adjMatrix(current, path(1));
    path(end) = path(1);

    % Display result
    fprintf('Greedy TSP Path: ');
    disp(path);
    fprintf('Total Distance: %d\n', totalDist);

    % Plot the graph and highlight the TSP path
    G = digraph(adjMatrix);  % use digraph since it's directed
    figure;
    p = plot(G, 'EdgeLabel', G.Edges.Weight, 'LineWidth', 1.5, 'Layout', 'force');
    highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);
    title('Greedy TSP Path');
end
