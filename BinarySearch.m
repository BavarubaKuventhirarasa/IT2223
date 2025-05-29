collection=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
targrt =42;
low=1;
high=length(collection);
found=false;
tic;
while(low <= high)
	
		mid=floor((low+high)/2);
		
		if collection(mid) == targrt
			fprintf('Target position at index  %d\n',mid);
            found =true;
			break;
        
        elseif collection(mid) > targrt
			high=mid-1; 


        elseif collection(mid)<targrt
			low=mid+1;
		end
end
elapsedTime=toc;
fprintf('Elapsed Time : % seconds\n',elapsedTime);