numArr=[3,5,7,9,11,13];
targetelement=11;
found = false;
tic;
for i=1:length(numArr)
    if numArr(i)==targetelement
        found = true;
        index=i;
        break;
    end
end

if found
    fprintf('The element at index :%d \n',index);
else
    disp('Element is not found');
end

elapsedTime=toc;%End timing and store elapsed time
fprintf('Elapsed Time : % seconds\n',elapsedTime);