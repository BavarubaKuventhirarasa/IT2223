source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

figure;
plot(G, 'Layout', 'force');
title('Original Graph');
subNodes = [1, 2, 4];
Gsub = subgraph(G, subNodes);

figure;
plot(Gsub, 'Layout', 'force');
title('Subgraph with nodes 1, 2, and 4');

disp('Adjacent vertices for each node:');
for node = 1:numnodes(G)
    adj = neighbors(G, node);
    fprintf('Node %d: ', node);
    fprintf('%d ', adj);
    fprintf('\n');
end

figure;
p = plot(G, 'Layout', 'force');
title('Labeled Graph');
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));  % Label nodes
labeledge(p, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), (1:numedges(G)));  % Label edges with index

function graph_coloring()
    source = [1, 1, 2, 3, 4];
    destination = [2, 3, 4, 4, 5];
    G = graph(source, destination);
    n = numnodes(G);
    color = zeros(1, n);  % 0 means uncolored

    for u = 1:n
        neighborColors = color(neighbors(G, u));
        assignedColor = 1;
        while any(neighborColors == assignedColor)
            assignedColor = assignedColor + 1;
        end
        color(u) = assignedColor;
    end

    figure;
    p = plot(G, 'Layout', 'force');
    title('Graph Coloring');

    % Generate RGB colors
    colorMap = hsv(max(color));
    nodeColors = colorMap(color, :);  % RGB for each node

    % Highlight nodes individually
    for i = 1:n
        highlight(p, i, 'NodeColor', nodeColors(i, :));
    end

    labelnode(p, 1:n, string(1:n));

    disp('Node Colors:');
    for i = 1:n
        fprintf('Node %d -> Color %d\n', i, color(i));
    end
end

graph_coloring();

source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

[startNode, endNode] = deal(1, 5);
[path, dist] = shortestpath(G, startNode, endNode);

fprintf('Shortest path from %d to %d:\n', startNode, endNode);
disp(path);

figure;
p = plot(G, 'Layout', 'force');
highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p, path, 'NodeColor', 'r');
title(sprintf('Shortest Path from %d to %d (Length: %d)', startNode, endNode, dist));
