global key
InitKeyboard();

while 1
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