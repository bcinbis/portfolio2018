import datetime;



time = str(datetime.datetime.now())

month = int(time[5:7])

day = int(time[8:10])

year = int(time[0:4])



birthday = input("What is your birthdate?  Please respond in the format MM/DD/YYYY: ")

userMonth = int(birthday[0:2])

userDay = int(birthday[3:5])

userYear = int(birthday[6:10])



if(month > userMonth):

    ageYears = year - userYear

    print(str(ageYears) + " years")
    if(userDay < day):
        ageMonths = month - userMonth
        print(str(ageMonths) + " months")
        ageDays = day - userDay
        print(str(ageDays) + " days")
    elif(userDay > day):
        ageMonths = month - userMonth - 1
        print(str(ageMonths) + " months")
        ageDays = 30 - (userDay - day)
        print(str(ageDays) + " days")
    elif(userDay == day):

        ageMonths = month - userMonth
        print(str(ageMonths) + " months")
        ageDays = 0
        print(str(ageDays) + " days")
elif(month < userMonth):

    ageYears = year - userYear - 1

    print(str(ageYears) + " years")

    if(userDay < day):
        ageMonths = (12-userMonth) + month
        print(str(ageMonths) + " months")
        ageDays = day - userDay
        print(str(ageDays) + " days")
    elif(userDay > day):
        ageMonths = (12-userMonth) + month - 1
        print(str(ageMonths) + " months")
        ageDays = 30 - (userDay - day)
        print(str(ageDays) + " days")
    elif(userDay == day):
        ageMonths = 12 - (userMonth - month)
        print(str(ageMonths) + " months")
        ageDays = 0
        print(str(ageDays) + " days")
elif(month == userMonth):

    if(userDay <= day):

        ageYears = year - userYear

        print(str(ageYears) + " years")
        ageMonths = 0
        print(str(ageMonths) + " months")
        ageDays = day - userDay
        print(str(ageDays) + " days")
    elif(userDay > day):

        ageYears = year - userYear - 1

        print(str(ageYears) + " years")
        ageMonths = 11
        print(str(ageMonths) + " months")
        ageDays = 30 - (userDay - day)
        print(str(ageDays) + " days")

ageMinutes = ageYears * 365 * 24 * 60 + ageMonths * 30 * 24 * 60 + ageDays * 24 * 60
print("Or a total of " + str(ageMinutes) + " minutes old")
ageSeconds = ageYears * 365 * 24 * 60 * 60 + ageMonths * 30 * 24 * 60 * 60 + ageDays * 24 * 60 * 60
print("Or a total of " + str(ageSeconds) + " seconds old")
