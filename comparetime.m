%compare the time complexity between linear search and binary search
arr =1:1000;
target=678;
low=1;
high=length(arr);
found=false;
tic;
for i=1:length(arr)
    if arr(i)==target
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
fprintf('Elapsed Time for linear search : % seconds\n',elapsedTime);

tic;
while(low <= high)
	
		mid=floor((low+high)/2);
		
		if arr(mid) == target
			fprintf('Target position at index  %d\n',mid);
            found =true;
			break;
        
        elseif arr(mid) > target
			high=mid-1; 


        elseif arr(mid)<target
			low=mid+1;
		end
end
elapsedTime=toc;
fprintf('Elapsed Time for binary search: % seconds\n',elapsedTime);

