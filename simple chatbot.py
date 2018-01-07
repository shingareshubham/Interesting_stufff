import random

greetings = ['hola', 'hello', 'hi', 'Hi', 'hey!','hey']
random_greeting = random.choice(greetings)

question = ['How are you?','How are you doing?']
responses = ['Okay',"I'm fine"]
random_response = random.choice(responses)

education = ['Education','Education?','education','qualification','edu?']
edu_res= ['Bachelor degree in computer science']
random_edu= random.choice(edu_res)


while True:
    userInput = input(">>> ")
    if userInput in greetings:
        print(random_greeting)
    elif userInput in question:
        print(random_response)
    elif userInput in education:
        print(random_edu)
    else:
        print("I did not understand what you said")
