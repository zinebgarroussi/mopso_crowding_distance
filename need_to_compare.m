function need_= need_to_compare(solution1,solution2)
%NEED_TO_COMPARE Summary of this fuNction goes here
%   Detailed explanation goes here

format long;

need_ = (solution1.OverallConstraintViolation <0 || solution2.OverallConstraintViolation <0);


end

