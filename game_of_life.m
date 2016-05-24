function game_of_life()

 fprintf('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n')
 fprintf(' Game of life ')
 fprintf('\n\n Ylopoiisi se Matlab') 
 fprintf('\n\n Ergasia eksaminou.')
 fprintf('\n\n\n\n\n\n\n')

 % Kane tin sproradiki katanomi gia pinaka 50x50 arxika
 global N; 
 N= 50;
 global X; 
 X= sparse(N,N);
  
% Sxediase ton pinaka
spy(X);
drawnow;

% Sxediase ta buttons, dropdown ktl.
uicontrol('Style', 'popup',...
           'String', '50|100|150|1000',...
           'Position', [10 330 50 30],...
           'Callback', @setmap);
uicontrol('Style','text',...
        'Position',[10 365 60 15],...
        'String','Grid Size :');

uicontrol('Style', 'pushbutton', 'String', 'Start Random',...
        'Position', [7 390 85 15],...
        'Callback', 'life'); 

uicontrol('Style', 'pushbutton', 'String', 'Start Exploder',...
        'Position', [7 280 85 15],...
        'Callback', 'life_exploder');
 
uicontrol('Style', 'pushbutton', 'String', 'Start Glider Gun',...
        'Position', [7 250 85 15],...
        'Callback', 'life_glider_gun'); 

uicontrol('Style', 'pushbutton', 'String', 'Start Cell Row',...
        'Position', [7 220 85 15],...
        'Callback', 'life_cell_row'); 

uicontrol('Style', 'pushbutton', 'String', 'Die Hard',...
        'Position', [7 190 85 15],...
        'Callback', 'life_die_hard'); 

uicontrol('Style', 'pushbutton', 'String', 'Stop',...
        'Position', [10 100 60 15],...
        'Callback', 'stopgame'); 

end

function setmap(hObj,event)  
    
   % function otan alaksi i timi tou drop down.
   % Analoga tin epilogi allazei i timi tou N, diladi to megethos tou pinaka
   % kai ton ksana sxediazei

    global N;
    val = get(hObj,'Value');
    if val ==1
        N=50;
        X= sparse(N,N);
        spy(X);
        drawnow;
    elseif val == 2      
        N=100;
        X= sparse(N,N);
        spy(X);
        drawnow;
    elseif val == 3      
        N=150;
        X= sparse(N,N);
        spy(X);
        drawnow;
    elseif val == 4       
        N=1000;
        X= sparse(N,N);
        spy(X);
        drawnow;
    end
end
