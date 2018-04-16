import Box
import Pyramid
import Sphere


shape = input("What kind of shape do you want?  Answer B for box, S for sphere, P for pyramid: ")

if(shape == "B"):
    box1 = Box.Cube()
    box1.w = int(input("Box width: "))
    box1.l = int(input("Box length: "))
    box1.h = int(input("Box height: "))
    
    box1.volume()
    box1.SA()

elif(shape == "S"):
    sphere1 = Sphere.Pokeball()
    sphere1.r = int(input("Sphere radius: "))
    sphere1.volume()
    sphere1.SA()

elif(shape == "P"):
    pyramid1 = Pyramid.FidgetSpinner()
    pyramid1.pW = int(input("Pyramid width: "))
    pyramid1.pL = int(input("Pyramid length: "))
    pyramid1.pH = int(input("Pyramid height: "))
    pyramid1.volume()
    pyramid1.SA()
