% Define the weighted adjacency matrix
adjMatrix = [
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0;
];

% Replace 0s with Inf (except diagonal)
n = size(adjMatrix, 1);
for i = 1:n
    for j = 1:n
        if i ~= j && adjMatrix(i, j) == 0
            adjMatrix(i, j) = Inf;
        end
    end
end

% Create and plot the graph
G = graph(adjMatrix);
figure;
plot(G, 'LineWidth', 1.5, 'Layout', 'force', 'EdgeLabel', G.Edges.Weight);
title('Graph with Edge Weights');

% Dijkstra's Algorithm
source_node = 1;
visited = false(1, n);
distance = Inf(1, n);
distance(source_node) = 0;

for i = 1:n
    % Find unvisited node with smallest distance
    minDist = Inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u = j;
        end
    end

    if u == -1
        break;
    end

    visited(u) = true;

    % Relaxation step
    for v = 1:n
        if ~visited(v) && adjMatrix(u, v) ~= Inf
            if distance(u) + adjMatrix(u, v) < distance(v)
                distance(v) = distance(u) + adjMatrix(u, v);
            end
        end
    end
end

% Display results
fprintf('Shortest distance from source node %d:\n', source_node);
for i = 1:n
    fprintf('Vertex %d: %d\n', i, distance(i));
end
