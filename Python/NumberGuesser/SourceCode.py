play = True
import random
d=0
a = random.randrange(1, 100)
while(play == True):

    d += 1 
    b = int(input("Guess a number between 1 and 100:"))
    if (a == b):
        print("You have guessed correctly! Wowsers! It took you " + str(d) + " tries!")
        c = input("Play again? Input Y/N:")
        if (c == "Y"):
            play = False
        else:
            play = True
    else:
        if (a>b):
            c = input(str(b) + " is too low. Play again? Input Y/N:")
            if (c == "Y"):
                play = True
            else:
                play = False
        if (a<b):
           c = input(str(b) + " is too high. Play again? Input Y/N:")
           if (c == "Y"):
                play = True
           else:
                play = False
