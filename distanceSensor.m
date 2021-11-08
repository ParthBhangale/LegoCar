brick.SetColorMode(3,2);
    
color = brick.ColorCode(3);

pickup = false;

if color == 4
    
    while ~blueCount

    distance = brick.UltrasonicDist(2);

        while distance >= 25

            color = brick.ColorCode(3);
            disp(color);
            distance = brick.UltrasonicDist(2);
            
            if color == 2
                
                if pickup
                
                    blueCount = false;
                    break;
                    
                end
                
            end

            if color == 5

                    brick.StopMotor('C');
                    pause(0.08);
                    brick.StopMotor('B');
                    pause(3);
            end

            if color == 3

                brick.StopMotor('C');
                pause(0.08);
                brick.StopMotor('B');
                pause(3)
                
                pickup = true;
            end

        brick.MoveMotor('B',100);
        brick.MoveMotor('C',100);
        end

        brick.StopMotor('B', 'Coast');
        brick.StopMotor('C', 'Coast');

        distance = brick.UltrasonicDist(2);

        count = 0;

        if distance <= 25
                brick.MoveMotor('B', -33);
                brick.MoveMotor('C', 30);
                pause(0.6)
                brick.StopMotor('C');
                pause(0.08);
                brick.StopMotor('B');
                pause(0.2);
                count = count + 1;
        end
        
        distance = brick.UltrasonicDist(2);
        
        if distance <= 50 && count > 0

                brick.MoveMotor('B', 33);
                brick.MoveMotor('C', -30);
                pause(0.7);
                brick.StopMotor('C');
                pause(0.08);
                brick.StopMotor('B');

                brick.MoveMotor('B', 33);
                brick.MoveMotor('C', -30);
                pause(0.7);
                brick.StopMotor('C');
                pause(0.08);
                brick.StopMotor('B');
                count = count + 1;
        end

        distance = brick.UltrasonicDist(2);

        if distance <= 25 && count > 1
            brick.MoveMotor('B', 33);
            brick.MoveMotor('C', -30);
            pause(0.6);
            brick.StopMotor('C');
            pause(0.08);
            brick.StopMotor('B');
        end
        
    end

end


