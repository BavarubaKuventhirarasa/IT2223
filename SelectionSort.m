Arr=[64,25,22,12,11];
high=length(Arr);
for i=1:high-1
    minIdx=i;
    for j=i+1:high
        if Arr(j) < Arr(minIdx)
            minIdx=j;
        end
    end

    if minIdx == i
        temp=Arr(i);
        Arr(i)=Arr(minIdx);
        Arr(minIdx)=temp;
    end
end
sortedArr=Arr;
fprintf('Sorted Array %d \n ',sortedArr);