Arr=[5,4,10,1,6,2];
high=length(Arr);
low=1;
for i=1:high
    current=Arr(i);
    while j>=1 && Arr(j)
        Arr(j+1)=Arr(j);
        j=j-1;
    end
    Arr(j+1)=current;
end
disp('Sorted array :');
disp(Arr);