function A = quickSort(A, startIdx, endIdx)
    if (endIdx - startIdx) > 0
        pivot = A(endIdx);
        temp = A; % copy array
        left = startIdx;
        right = endIdx;
        
        for i = startIdx:endIdx
            if A(i) > pivot
                temp(right) = A(i);
                right = right - 1;
            elseif A(i) < pivot
                temp(left) = A(i);
                left = left + 1;
            end
        end
        
        % Fill pivot values in the middle
        for j = left:right
            temp(j) = pivot;
        end
        
        A = temp; % copy back
        
        % Recursive calls
        A = quickSort(A, startIdx, left - 1);
        A = quickSort(A, right + 1, endIdx);
    end
end
 quickSort([8, 3, 5, 7, 2, 1])