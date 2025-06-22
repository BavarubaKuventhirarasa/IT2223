function DFS_main()
    % Define adjacency matrix for the graph
    % Example graph: 6 nodes
    % A(i,j) = 1 means there's an edge from node i to node j
    A = [0 1 1 0 0 0;
         1 0 1 1 0 0;
         1 1 0 0 1 0;
         0 1 0 0 1 1;
         0 0 1 1 0 1;
         0 0 0 1 1 0];
     
    visited = zeros(1, size(A, 1));  % Initialize visited nodes
    startNode = 1;                   % Start DFS from node 1
    fprintf('DFS traversal starting from node %d:\n', startNode);
    DFS(A, visited, startNode);
end

function DFS(A, visited, node)
    persistent visitedGlobal;
    if isempty(visitedGlobal)
        visitedGlobal = zeros(1, length(A));
    end
    
    visitedGlobal(node) = 1;
    fprintf('%d ', node);
    
    for i = 1:length(A)
        if A(node, i) == 1 && visitedGlobal(i) == 0
            DFS(A, visited, i);
        end
    end
end
