function matrix = sparse2matrix (cellvec)
    m = cellvec{1}(1,1);
    n = cellvec{1}(1,2);
    defult = ones(m,n) .* cellvec{1,2};
    
    for i= 3:length(cellvec)
        r1 = cellvec{i}(1,1); 
        c1 = cellvec{i}(1,2);
        defult(r1,c1) = cellvec{i}(1,3);
    end
    matrix = defult;
end

% function M = sparse2matrix(cellvec)
%     sz = cellvec{1};
%     val = cellvec{2};
%     M = val*ones(sz);
%     for i = 3:length(cellvec)
%         el = cellvec{i};
%         M(el(1), el(2)) = el(3);
%     end
% end