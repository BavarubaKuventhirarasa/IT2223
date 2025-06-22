%define edges
nodes={'A','B','C','D','E','F','G'};
%define starting and ending nodes
s=[1 1 2 2 3 3];
t=[2 3 4 5 6 7];

%define the edge weight
weights=[5 3 2 4 6 1];

%weighted grapah
G=digraph(s,t,weights,nodes);

%plot the tree 
plot(G,'Layout','layered','Direction','down','EdgeLabel',G.Edges.Weight);
title('Simple Directed  Weighted Tree with  3 Levels');