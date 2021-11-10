brick.SetColorMode(3,2);
    
color = brick.ColorCode(3);

pickup = false;

global key
InitKeyboard();

if color == 4
    
    while ~blueCount

    distance = brick.UltrasonicDist(2);

        while distance >= 25

            color = brick.ColorCode(3);
            disp(color);
            distance = brick.UltrasonicDist(2);
            
            if color == 2
                
                if pickup
                
                    blueCount = true;
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
                

                while key ~= 'q'
                                
                pause(0.1);
                switch key
                    case 'uparrow'
                        disp('Up');
                        
                        while key == 'uparrow'
                            brick.MoveMotor('B', 10);
                            brick.MoveMotor('C', 10);
                            brick.MoveMotor('B', 25);
                            brick.MoveMotor('C', 25);
                            brick.MoveMotor('B', 40);
                            brick.MoveMotor('C', 40);
                            brick.MoveMotor('B', 100);
                            brick.MoveMotor('C', 100);
                            pause(1);
                            brick.StopMotor('B', 'Coast');
                            brick.StopMotor('C', 'Coast');
                            pause(0.8);
                            break;
                        end
                        
                    case 'downarrow'
                        disp('Down');
                        
                        while key == 'downarrow'
                            brick.MoveMotor('B', -10);
                            brick.MoveMotor('C', -10);
                            brick.MoveMotor('B', -25);
                            brick.MoveMotor('C', -25);
                            brick.MoveMotor('B', -40);
                            brick.MoveMotor('C', -40);
                            brick.MoveMotor('B', -100);
                            brick.MoveMotor('C', -100);
                            pause(0.4);
                            brick.StopMotor('B', 'Coast');
                            brick.StopMotor('C', 'Coast');
                            pause(0.5);
                            break;
                        end
                        
                    case 'leftarrow'
                        disp('left');
                        while key == 'leftarrow'
                            brick.MoveMotor('B', -50);
                            brick.MoveMotor('C', 50);
                            pause (0.1);
                            break;
                        end
                        brick.StopMotor('B', 'Coast');
                        brick.StopMotor('C', 'Coast');
                    case 'rightarrow'
                        disp('right');
                        while key == 'rightarrow'
                            brick.MoveMotor('B', 50);
                            brick.MoveMotor('C', -50);
                            pause (0.1);
                            break;
                        end
                        brick.StopMotor('B', 'Coast');
                        brick.StopMotor('C', 'Coast');
                    case 0
                        disp('No key pressed');
                    case 'q'
                        break;
                        
                end
            end
            CloseKeyboard();
          


            
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



