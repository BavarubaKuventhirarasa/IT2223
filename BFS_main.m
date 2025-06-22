function BFS_main()
    % Define adjacency matrix (example with 6 nodes)
    A = [0 1 1 0 0 0;
         1 0 1 1 0 0;
         1 1 0 0 1 0;
         0 1 0 0 1 1;
         0 0 1 1 0 1;
         0 0 0 1 1 0];
     
    startNode = 1;
    fprintf('BFS traversal starting from node %d:\n', startNode);
    BFS(A, startNode);
end

function BFS(A, startNode)
    numNodes = size(A, 1);
    visited = zeros(1, numNodes);
    queue = [];

    % Enqueue the start node and mark as visited
    queue(end + 1) = startNode;
    visited(startNode) = 1;

    while ~isempty(queue)
        current = queue(1);
        queue(1) = [];  % Dequeue

        fprintf('%d ', current);

        % Visit all adjacent unvisited nodes
        for i = 1:numNodes
            if A(current, i) == 1 && visited(i) == 0
                queue(end + 1) = i;  % Enqueue
                visited(i) = 1;
            end
        end
    end
    fprintf('\n');
end
