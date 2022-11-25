troubleshoot:- write('To diagnose your phone select one option below'),nl,
               write('Screen diagnosing (Enter 1)'),nl,
               write('Battery diagnosing (Enter 2)'),nl,
               write('Charging system diagnosing (Enter 3)'),nl,
               read(Number),
               readInput(Number).
readInput(X):-  X=\=1,X=\=2,X=\=3,
                write('Input a number that is valid'), nl,
                troubleshoot.             
readInput(X):-  X=:=1,
                write('If you screen experiences any of the problems below Enter 1 if not Enter 0? '),nl,
                write('1.screen Cracked'),nl,
                write('2.Screen Pixelated'),nl,
                write('3.Screen has black spots'),nl,
                write('4.Screen has discolored areas'),nl,
                read(Response),
                screen_reply(Response).


readInput(X):-  X=:=2,
                write('If you Battery experiences any of the problems below Enter 1 if not Enter 0? '),nl,
                write('1.Battery overheating'),nl,
                write('2.Battery is bulging'),nl,
                write('3.Battery drains quickly'),nl,
                write('4.Phone turns on only when connected to the charger'),nl,
                read(Response),
                battery_reply(Response).

       

readInput(X):-  X=:=3,
                write('If your cellphone experiences any of the problems below Enter 1 if not Enter 0? '),nl,
                write('Phone does not charge when connected to the charger'),nl,
                read(Response),
                charging_reply(Response).

charging_reply(X):-   X=:=1,
                    write('Charging system replacement is needed'),nl.
charging_reply(X):-   X=:=0,
                   write('Charging system is in good condition'),nl,nl,nl,
                   troubleshoot.

screen_reply(X):-   X=:=1,
                    write('Screen replacement is needed'),nl.
screen_reply(X):-   X=:=0,
                   write('Screen is in good condition'),nl,nl,nl,
                   troubleshoot.                    
                
battery_reply(X):-   X=:=1,
                    write('Battery replacement is needed'),nl.
battery_reply(X):-   X=:=0,
                   write('Battery is in good condition'),nl,nl,nl,
                   troubleshoot.        







