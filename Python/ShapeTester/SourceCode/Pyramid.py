class FidgetSpinner:
    volume = 0
    SA = 0


    def __init__(self):
        self.pW = 0
        self.pL = 0
        self.pH = 0

    def volume(self):
        volume = self.pW * self.pL * self.pH * (1/3)
        print("Your volume is: " + str(volume))

    def SA(self):
        SA = self.pW * self.pL + self.pL * ((self.pW / 2)**2 + self.pH**2)**0.5 + self.pW * ((self.pL / 2)**2 + self.pH**2)**0.5
        print("Your surface area is: " + str(SA))
