s=1;
t=2:6;
G=graph(s,t);
h=plot(G,'Layout','force');
highlight(h,[1,3],'NodeColor','red');
highlight(h,1,3,'EdgeColor','magenta');