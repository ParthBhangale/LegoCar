pause(1);
%sdgfhgj
brick.SetColorMode(3,2);
    
color = brick.ColorCode(3);

pickup = false;
blueCount = 0;
greenCount = 0;

if color == 4
    
    while color ~= 2 && blueCount < 8

    distance = brick.UltrasonicDist(2);

        while distance >= 30

            color = brick.ColorCode(3);
            disp(color);
            distance = brick.UltrasonicDist(2);
            
            if color == 2
            blueCount = blueCount + 1;
            end

            if color == 5

                    brick.StopMotor('B');
                    brick.StopMotor('C');
                    pause(3);
            end

            if color == 3 && greenCount < 1

                brick.StopMotor('B');
                brick.StopMotor('C');
                pause(3)
                pickup = true;
                greenCount = greenCount + 1;
            end

        brick.MoveMotor('B',100);
        brick.MoveMotor('C',100);
        end

        brick.StopMotor('B', 'Coast');
        brick.StopMotor('C', 'Coast');

        distance = brick.UltrasonicDist(2);

        count = 0;

        if distance <= 30
                brick.MoveMotor('B', -33);
                brick.MoveMotor('C', 30);
                pause(0.62)
                brick.StopMotor('B');
                brick.StopMotor('C');
                pause(0.2);
                count = count + 1;

                distance = brick.UltrasonicDist(2);

        end

        if distance <= 50 && count > 0

                brick.MoveMotor('B', 33);
                brick.MoveMotor('C', -30);
                pause(0.7);
                brick.StopMotor('B');
                brick.StopMotor('C');

                brick.MoveMotor('B', 33);
                brick.MoveMotor('C', -30);
                pause(0.7);
                brick.StopMotor('B');
                brick.StopMotor('C');
                count = count + 1;
        end

        distance = brick.UltrasonicDist(2);

        if distance <= 30 && count > 1
            brick.MoveMotor('B', 33);
            brick.MoveMotor('C', -30);
            pause(0.62)
            brick.StopMotor('B');
            brick.StopMotor('C');
        end

        distance = brick.UltrasonicDist(2);
        
        
        
    end

end


