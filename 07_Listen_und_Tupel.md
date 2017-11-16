
# Sequenzen (Folgen)

Sequenzen sind:


> * Zeichenketten (Strings)
* Listen
    In einer Liste kann eine Folge beliebiger Objekte gespeichert werden, also zum Beispiel Strings, Integers, Float-Zahlen aber auch Listen und Tupel selbst. Eine Liste kann jederzeit während des Programmablaufs wieder geändert werden.
* Tupel
    In einem Tupel können wie in einer Liste eine Folge beliebiger Objekte gespeichert werden, aber ein Tupel kann dann während des weiteren Programmverlaufs nicht mehr verändert werden.
* Binärdaten
    Eine Sequenz von Binärdaten, die unveränderlich sein kann beim Typ "bytes" oder veränderlich beim Typ "bytearray"
    
Entnommen von: http://www.python-kurs.eu/python3_sequentielle_datentypen.php

Listen sind mutable (dt. veränderliche) Datentypen. Im Gegensatz sind Tupel (s.u.) immutable (dt. unveränderlichen) Datentypen.

Zu mutable vs. immutable siehe auch hier: http://python.haas.homelinux.net/python_kapitel_07_003.htm

## Listen

Hier ein paar Beispiele:


```python
[1, 2, 3]
```




    [1, 2, 3]




```python
['cat', 'bat', 'rat', 'elephant']
```




    ['cat', 'bat', 'rat', 'elephant']




```python
['cat', 3.1415, True, None, 42]
```




    ['cat', 3.1415, True, None, 42]




```python
spam = ['cat', 'bat', 'rat', 'elephant']
```


```python
spam
```




    ['cat', 'bat', 'rat', 'elephant']



### Elemente aufrufen


```python
spam[0]
```




    'cat'




```python
spam[1]
```




    'bat'




```python
spam[2]
```




    'rat'




```python
spam[3]
```




    'elephant'




```python
spam[4]
```


    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-10-fe61278173ab> in <module>()
    ----> 1 spam[4]
    

    IndexError: list index out of range



```python
spam[1.0]
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-11-bbdea97a156f> in <module>()
    ----> 1 spam[1.0]
    

    TypeError: list indices must be integers or slices, not float


Zu slices (dt. Abschnitte) siehe unten.


```python
spam[int(1.0)]
```




    'bat'



### Listen in der Liste:


```python
spam = [['cat', 'bat'], [10, 20, 30, 40, 50]]
```


```python
spam[0]
```




    ['cat', 'bat']




```python
spam[0][1]
```




    'bat'




```python
spam[1][2]
```




    30



### Negative Indizes


```python
spam = ['cat', 'bat', 'rat', 'elephant']
```


```python
spam[-1]
```




    'elephant'




```python
spam[-3]
```




    'bat'



### Teillisten mit Slices


```python
spam[0:4]
```




    ['cat', 'bat', 'rat', 'elephant']




```python
spam[1:3]
```




    ['bat', 'rat']




```python
spam[0:-2]
```




    ['cat', 'bat']




```python
spam[:2]
```




    ['cat', 'bat']




```python
spam[1:]
```




    ['bat', 'rat', 'elephant']




```python
spam[:]
```




    ['cat', 'bat', 'rat', 'elephant']



### Länge einer Liste


```python
len(spam)
```




    4



### Ändern einer Liste


```python
spam
```




    ['cat', 'bat', 'rat', 'elephant']




```python
spam[1] = 'bird'
```


```python
spam
```




    ['cat', 'bird', 'rat', 'elephant']




```python
spam[2] = spam[1]
```


```python
spam
```




    ['cat', 'bird', 'bird', 'elephant']




```python
spam[-1] = 123456
```


```python
spam
```




    ['cat', 'bird', 'bird', 123456]



### Listenverkettung


```python
[1, 2, 3] + ['A', 'B', 'C', 'D']
```




    [1, 2, 3, 'A', 'B', 'C', 'D']




```python
['X', 'Y', 'Z'] * 3
```




    ['X', 'Y', 'Z', 'X', 'Y', 'Z', 'X', 'Y', 'Z']




```python
spam = [1, 2, 3]
spam = spam + ['A', 'B', 'C', 'D']
spam
```




    [1, 2, 3, 'A', 'B', 'C', 'D']



### Entfernen von Elementen


```python
spam = ['cat', 'bat', 'rat', 'elephant']
del spam[2]
spam
```




    ['cat', 'bat', 'elephant']




```python
del spam[2]
spam
```




    ['cat', 'bat']



### Beispiel


```python
catNames = []
while True:
    print('Bitte geben Sie den Namen der Katze ' + str(len(catNames) + 1) + ' Oder enter zum Beenden')
    name = input()
    if name == '':
        break
    catNames = catNames + [name]  # list concatenation
print('Die Katzen heißen:')
for name in catNames:
    print(' ' + name)
```

    Bitte geben Sie den Namen der Katze 1 Oder enter zum Beenden
    michl
    Bitte geben Sie den Namen der Katze 2 Oder enter zum Beenden
    daniel
    Bitte geben Sie den Namen der Katze 3 Oder enter zum Beenden
    mausi
    Bitte geben Sie den Namen der Katze 4 Oder enter zum Beenden
    
    Die Katzen heißen:
     michl
     daniel
     mausi


### For-Schleifen mit Listen


```python
for i in range(5):
    print(i)
```

    0
    1
    2
    3
    4



```python
for i in [0, 1, 2, 3, 4]:
    print(i)
```

    0
    1
    2
    3
    4



```python
supplies = ['pens', 'staplers', 'flame-thrower', 'binders']
for i in range(len(supplies)):
    print('Index ' + str(i) + ' in supplies ist: ' + supplies[i])
```

    Index 0 in supplies ist: pens
    Index 1 in supplies ist: staplers
    Index 2 in supplies ist: flame-thrower
    Index 3 in supplies ist: binders


### Operatoren `in` und `not in`


```python
'howdy' in ['Hallo', 'hi', 'howdy', 'heyas']
```




    True




```python
spam = ['Hallo', 'hi', 'howdy', 'heyas']
```


```python
'cat' in spam
```




    False




```python
'howdy' in spam
```




    True




```python
'cat' not in spam
```




    True




```python
'howdy' not in spam
```




    False



### Mehrfachzuweisung


```python
cat = ['fat', 'black', 'loud']
size = cat[0]
color = cat[1]
disposition = cat[2]
print(size)
print(color)
print(disposition)
```

    fat
    black
    loud



```python
cat = ['fat', 'black', 'loud']
size, color, disposition = cat
print(size)
print(color)
print(disposition)
```

    fat
    black
    loud



```python
cat = ['fat', 'black', 'loud']
size, color, disposition, name = cat
print(size)
print(color)
print(disposition)
```


    ---------------------------------------------------------------------------

    ValueError                                Traceback (most recent call last)

    <ipython-input-63-26ea76513fef> in <module>()
          1 cat = ['fat', 'black', 'loud']
    ----> 2 size, color, disposition, name = cat
          3 print(size)
          4 print(color)
          5 print(disposition)


    ValueError: not enough values to unpack (expected 4, got 3)


| Zuweisungsanweisung | Entsprechende Anweisung mit erweitertem Zuweisungsoperator |
|:-------------------:|:----------------------------------------------------------:|
| spam = spam + 1     | spam += 1                                                  |
| spam = spam - 1     | spam -= 1                                                  |
| spam = spam * 1     | spam *= 1                                                  |
| spam = spam / 1     | spam /= 1                                                  |
| spam = spam % 1     | spam %= 1                                                  |


### Methoden von Listen

Siehe auch hier: http://www.python-kurs.eu/python3_listen.php

#### Elemente finden mit index()


```python
spam = ['Hallo', 'hi', 'howdy', 'heyas']
spam.index('Hallo')
```




    0




```python
spam.index('heyas')
```




    3




```python
spam = ['Hallo', 'hi', 'howdy', 'heyas', 'Hallo']
spam.index('Hallo')
```




    0



#### Elemente hinzufügen


```python
spam = ['Hallo', 'hi', 'howdy']
spam.append('Hola')
spam
```




    ['Hallo', 'hi', 'howdy', 'Hola']




```python
spam.insert(1, 'Hurray')
spam
```




    ['Hallo', 'Hurray', 'hi', 'howdy', 'Hola']



insert() und append() haben den Rückgabewert None. Diese Listen-Methoden __ändern__ die zugehörige Liste.

__Achtung__ insert() und append() funktionieren nicht auf Strings oder Integers.

Der String ansich ist immutable.


```python
spam = 'Hallo'
spam.append(' Welt')
```


    ---------------------------------------------------------------------------

    AttributeError                            Traceback (most recent call last)

    <ipython-input-71-0bc0d7f5af26> in <module>()
          1 spam = 'Hallo'
    ----> 2 spam.append(' Welt')
    

    AttributeError: 'str' object has no attribute 'append'



```python
spam = 42
spam.insert(1, Welt)
```


    ---------------------------------------------------------------------------

    AttributeError                            Traceback (most recent call last)

    <ipython-input-72-dd7235097e60> in <module>()
          1 spam = 42
    ----> 2 spam.insert(1, Welt)
    

    AttributeError: 'int' object has no attribute 'insert'



```python
import time

n= 100000

start_time = time.time()
l = []
for i in range(n):
    l = l + [i * 2]
print("Zeit mit l = l + [i * 2]: {0:9.4f}".format(time.time() - start_time))

start_time = time.time()
l = []
for i in range(n):
    l += [i * 2]
print("Zeit mit l += [i * 2]: {0:12.4f}".format(time.time() - start_time))

start_time = time.time()
l = []
for i in range(n):
    l.append(i * 2)
print("Zeit mit l.append(i * 2): {0:9.4f}".format(time.time() - start_time))
```

    Zeit mit l = l + [i * 2]:   35.8227
    Zeit mit l += [i * 2]:       0.0306
    Zeit mit l.append(i * 2):    0.0271


#### Elemente löschen


```python
spam = ['Hallo', 'hi', 'howdy', 'heyas', 'Hallo']
spam.remove('Hallo')
spam
```




    ['hi', 'howdy', 'heyas', 'Hallo']




```python
spam.remove('Hola')
```


    ---------------------------------------------------------------------------

    ValueError                                Traceback (most recent call last)

    <ipython-input-75-8caad95758bd> in <module>()
    ----> 1 spam.remove('Hola')
    

    ValueError: list.remove(x): x not in list


#### Elemente sortieren


```python
spam = [2, 5, 3.14, 1, -7]
spam.sort()
spam
```




    [-7, 1, 2, 3.14, 5]




```python
spam = ['Hallo', 'hi', 'howdy', 'heyas', 'Hallo']
spam.sort(reverse=True)
spam
```




    ['howdy', 'hi', 'heyas', 'Hallo', 'Hallo']




```python
# String und Integer geht nicht
spam = [2, 5, 3.14, 1, -7, 'Hallo', 'hi', 'howdy', 'heyas', 'Hallo']
spam.sort()
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-79-9f2ffbd30d10> in <module>()
          1 # String und Integer geht nicht
          2 spam = [2, 5, 3.14, 1, -7, 'Hallo', 'hi', 'howdy', 'heyas', 'Hallo']
    ----> 3 spam.sort()
    

    TypeError: unorderable types: str() < int()


__Sortiert wird nach ASCII__


```python
spam = ['Alice', 'ants', 'Bob', 'badgers', 'Carol', 'cats']
spam.sort()
spam
```




    ['Alice', 'Bob', 'Carol', 'ants', 'badgers', 'cats']




```python
spam.sort(key=str.lower)
spam
```




    ['Alice', 'ants', 'badgers', 'Bob', 'Carol', 'cats']



__Arbeitsauftrag__ Implementieren Sie mit Hilfe von Listen einen Magic 8 Ball.

* https://de.wikipedia.org/wiki/Magic_8_Ball
* http://www.m8ball.com/de/


## Listenähnliche Typen: Strings und Tupel


```python
name = 'Sophie'
name[0]
```




    'S'




```python
name[-2]
```




    'i'




```python
name[0:4]
```




    'Soph'




```python
'So' in name
```




    True




```python
's' in name
```




    False




```python
'p' not in name
```




    False




```python
for i in name:
    print(i)
```

    S
    o
    p
    h
    i
    e



```python
type(name)
```




    str



### Veränderbare und unveränderbare Datentypen


```python
name = 'Sophie eine Katze'
name[7] = 'die'
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-1-1bdc148e1df1> in <module>()
          1 name = 'Sophie eine Katze'
    ----> 2 name[7] = 'die'
    

    TypeError: 'str' object does not support item assignment



```python
name = 'Sophie eine Katze'
newName = name[0:7] + 'die' + name[11:17]
newName
```




    'Sophie die Katze'



### Tupel

Tuppel sind, wie Strings, nicht veränderbare Typen. 

Benötigt man eine sortierte unveränderliche Reihenfolge, so verwendet man Tupel.

Nicht veränderbare Typen können optimiert werden.


```python
eggs = ('hallo', 42, 0.5)
eggs[0]
```




    'hallo'




```python
eggs[1:3]
```




    (42, 0.5)




```python
len(eggs)
```




    3




```python
eggs[1]
```




    42




```python
eggs[2]
```




    0.5




```python
eggs[1] = 99
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-100-4c1b72b4295d> in <module>()
    ----> 1 eggs[1] = 99
    

    TypeError: 'tuple' object does not support item assignment



```python
type(eggs)
```




    tuple




```python
type('Hallo')
```




    str




```python
eggs = ('hallo',)
```


```python
eggs
```




    ('hallo',)




```python
type(eggs)
```




    tuple




```python
type(('hallo',))
```




    tuple




```python
type(('hallo'))
```




    str



#### Umwandlen von Tupel und Listen


```python
spam = ['Alice', 'ants', 'badgers', 'Bob', 'Carol', 'cats']
spamTuple = tuple(spam)
type(spamTuple)
```




    tuple




```python
list(spamTuple)
```




    ['Alice', 'ants', 'badgers', 'Bob', 'Carol', 'cats']




```python
type(list(spamTuple))
```




    list




```python
list('hallo')
```




    ['h', 'a', 'l', 'l', 'o']



### Verweise


```python
spam = 42
id(spam)
```




    140663981683168




```python
cheese = spam
id(cheese)
```




    140663981683168




```python
spam = 100
spam
```




    100




```python
cheese
```




    42




```python
id(spam)
```




    140663981685024




```python
id(cheese)
```




    140663981683168



Jetzt sollte man dies wirklich lesen: http://python.haas.homelinux.net/python_kapitel_07_003.htm


```python
spam = [0, 1, 2, 3, 4, 5]
id(spam)
```




    140663684979720




```python
cheese = spam
id(cheese)
```




    140663684979720




```python
cheese[1] = 'Hallo!'
spam
```




    [0, 'Hallo!', 2, 3, 4, 5]




```python
id(spam)
```




    140663684979720




```python
id(cheese)
```




    140663684979720



### Verweise übergeben


```python
def eggs(einParameter):
    einParameter.append('Hallo!')

spam = [1, 2, 3]
eggs(spam)
spam
```




    [1, 2, 3, 'Hallo!']



### copy() und deepcopy()


```python
import copy
spam = [0, 1, 2, 3, 4, 5]
cheese = copy.copy(spam)
cheese[1] = 'Hallo!'
spam
```




    [0, 1, 2, 3, 4, 5]




```python
cheese
```




    [0, 'Hallo!', 2, 3, 4, 5]



Enthält eine Liste eine List, so verwendet man deepcopy() um alles zu kopieren.
