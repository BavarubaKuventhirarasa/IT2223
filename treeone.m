nodes={'A','B','C','D','E','F','G'};
%define edges
s=[1 1 2 2 3 3];
t=[2 3 4 5 6 7];
%unweighted grapah
G=digraph(s,t,[],nodes);
%plot the tree 
plot(G,'Layout','layered','Direction','down');
title('Simple Tree with  3 Levels');