a = True
while (a==True):
    Str1 = input("Enter a word to translate to Pig Latin: ")
    str1 = Str1.lower()
    words = str1.split()
    for temp in words:
        pig = "ay"
        pig1 = "yay"

        firstLetter = str1[0]

        vowel = "a" or "i" or "o" or "u" or "e"
        if(firstLetter == vowel):
            finished1 = str1 + pig1
            print("Your new word is: " + finished1)
        else:
            finished = str1[1:] + firstLetter + pig
            print("Your new word is: " + finished)


    b = input("Run again? Y/N")
    if(b == "Y" or b =="y"):
        a = True
    if(b == "N" or b == "n"):
        a = False
