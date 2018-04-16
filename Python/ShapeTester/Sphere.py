class Pokeball:
    volume = 0
    SA = 0

    def __init__(self):
        self.r = 0

    def volume(self):
        volume = (4/3) * 3.1415 * self.r**3
        print("Your volume is: " + str(volume))

    def SA(self):
        SA = 4 * 3.1415 * self.r**2
        print("Your surface area is: " + str(SA))
