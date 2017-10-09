
# Zahlenraten


```python
# Dies ist ein Zahlenratespiel.
import random
secretNumber = random.randint(1, 20)
print('I am thinking of a number between 1 and 20.')
# Fordert den Spieler sechsmal zum Raten der Zahl auf.
for guessesTaken in range(1, 7):
    print('Take a guess.')
    guess = int(input())
    if guess < secretNumber:
        print('Your guess is too low.')
    elif guess > secretNumber:
        print('Your guess is too high.')
    else:
        break # Diese Bedingung tritt ein, wenn die Zahl erraten wurde!
if guess == secretNumber:
    print('Good job! You guessed my number in ' + str(guessesTaken) + ' guesses!')
else:
    print('Nope. The number I was thinking of was ' + str(secretNumber))
```

    I am thinking of a number between 1 and 20.
    Take a guess.
    10
    Your guess is too low.
    Take a guess.
    15
    Your guess is too high.
    Take a guess.
    12
    Your guess is too high.
    Take a guess.
    11
    Good job! You guessed my number in 4 guesses!


# Collatz Funktion


```python
def collatz(number):
    while number != 1:
        if number % 2 == 0:
            number = number // 2
            print(number)

        elif number % 2 == 1:
            number = 3 * number + 1
            print(number)

def user():
    try:
        print('Please enter a number')
        num = int(input())
        collatz(num)
    except ValueError:
        print('Enter a valid number')

user()
```

    Please enter a number
    3
    10
    5
    16
    8
    4
    2
    1

