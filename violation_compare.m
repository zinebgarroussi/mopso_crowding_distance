function tmp = violation_compare(solution1,solution2)
format long;


overall1 =solution1.OverallConstraintViolation;
overall2 = solution2.OverallConstraintViolation;

if ((overall1 < 0) && (overall2 < 0))
    if (overall1 > overall2)
        tmp=-1;
        return;
    elseif (overall2 > overall1)
        tmp= 1;
        return;
    else
        tmp= 0;
        return;
    end
    
elseif ((overall1 == 0) && (overall2 < 0))
    tmp= -1;
    return;
elseif ((overall1 < 0) && (overall2 == 0))
    tmp= 1;
    return;
else
    tmp= 0;
    return;
    
    
    
end
end

