    function [maxval]= my_max(L)
    maxval=L(1);
    for ii=2:length(L)
        if maxval<L(ii)
            maxval=L(ii);
        end
    end
    end