Arrcollect=[64,34,25,12,22,11,90];
high=length(Arrcollect);
low=1;
tic;
for i=1:high-1
    for j= 1:high-i
    if Arrcollect(j)>Arrcollect(j+1)
      temp=Arrcollect(j);
		Arrcollect(j)=Arrcollect(j+1);
		Arrcollect(j+1)=temp;
    end
 
    end
    
 
end
disp('Sorted Array :');
 disp(Arrcollect);
 elapsedTime=toc;
 disp(elapsedTime);