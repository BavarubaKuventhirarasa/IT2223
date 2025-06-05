% Define all edges s->t
s = [11 11 11 11 11 11 11 11 11  3  4  5  1  2  1  6  2  7  3  8  4  9  5 10 10];
t = [ 1  2  3  4  5  6  7  8  9  4  5  1  2  3  6  2  7  3  8  4  9  5 10  1 11];

G = graph(s,t);

h = plot(G,'Layout','force');

for node = 1:10
    highlight(h, node, 11, 'EdgeColor', 'magenta', 'LineWidth', 2);
end

% Green edges: (3,4), (4,5), (5,1), (1,2), (2,3)
highlight(h, 3, 4, 'EdgeColor', 'green', 'LineWidth', 2);
highlight(h, 4, 5, 'EdgeColor', 'green', 'LineWidth', 2);
highlight(h, 5, 1, 'EdgeColor', 'green', 'LineWidth', 2);
highlight(h, 1, 2, 'EdgeColor', 'green', 'LineWidth', 2);
highlight(h, 2, 3, 'EdgeColor', 'green', 'LineWidth', 2);

% Red edges forming cycle: (1,6), (6,2), (2,7), (7,3), (3,8), (8,4), (4,9), (9,5), (5,10), (10,1)
redEdges = [1 6; 6 2; 2 7; 7 3; 3 8; 8 4; 4 9; 9 5; 5 10; 10 1];
for k = 1:size(redEdges,1)
    highlight(h, redEdges(k,1), redEdges(k,2), 'EdgeColor', 'magenta', 'LineWidth', 2);
end