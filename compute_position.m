function compute_position()
format long;
global d;
global swarmSize;
global limits;
global pop;

for i = 1:swarmSize
    pop(i).Position = pop(i).Position + pop(i).Velocity;
    for j=1:d
    if  pop(i).Position(j) < limits(j,1)
        pop(i).Position(j)=limits(j,1);
        pop(i).Velocity(j) = pop(i).Velocity(j)*(-1);
        
    end
    if  pop(i).Position(j) > limits(j,2)
        pop(i).Position(j)=limits(j,2);
        pop(i).Velocity(j) = pop(i).Velocity(j)*(-1);
        
    end
    end
end

end


